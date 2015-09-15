package ue4hx.internal;
#if macro
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;

using haxe.macro.Tools;
using StringTools;
#end

class DelayedGlue {
  macro public static function getGlueType():haxe.macro.Expr {
    var cls = Context.getLocalClass().get(),
        pos = Context.currentPos();
    var ret = getGlueType_impl(cls, pos);
    return Context.parse(ret, pos);
  }


  macro public static function getSuperExpr(fieldName:String, args:Array<haxe.macro.Expr>):haxe.macro.Expr {
    var cls = Context.getLocalClass().get(),
        pos = Context.currentPos();
    // make sure that the super field was not already defined in haxe code
    var sup = cls.superClass;
    while (sup != null) {
      var scls = sup.t.get();
      if (scls.meta.has(':uextern')) break;
      for (sfield in scls.fields.get()) {
        if (sfield.name == fieldName) {
          // this field was already defined in a Haxe class; just use normal super
          return { expr:ECall(macro @:pos(pos) super.$fieldName, args), pos:pos };
        }
      }
      sup = scls.superClass;
    }

    var superClass = cls.superClass;
    if (superClass == null)
      throw new Error('Unreal Glue Generation: Field calls super but no superclass was found', pos);
    var field = superClass.t.get().findField(fieldName, false);
    if (field == null)
      throw new Error('Unreal Glue Generation: Field calls super but no field was found on super class', pos);
    var fargs = null, fret = null;
    switch(Context.follow(field.type)) {
    case TFun(targs,tret):
      var argn = 0;
      fargs = [ for (arg in targs) { name:'__usuper_arg' + argn++, type:TypeConv.get(arg.t, pos) } ];
      fret = TypeConv.get(tret, pos);
    case _: throw 'assert';
    }
    if (fargs.length != args.length)
      throw new Error('Unreal Glue Generation: super.$fieldName number of arguments differ from super. Expected ${fargs.length}; got ${args.length}', pos);
    var argn = 0;
    var block = [ for (arg in args) {
      var name = '__usuper_arg' + argn++;
      macro var $name = $arg;
    } ];
    fargs.unshift({ name:'this', type: TypeConv.get(Context.getLocalType(), pos) });

    var glueExpr = getGlueType_impl(cls, pos);
    var expr = glueExpr + '.' + fieldName + '(' + [ for (arg in fargs) arg.type.haxeToGlue(arg.name) ].join(',') + ')';
    trace(expr);
    block.push(Context.parse(expr, pos));
    if (block.length == 1)
      return block[0];
    else
      return { expr:EBlock(block), pos: pos };
  }

#if macro
  private static function getGlueType_impl(cls:ClassType, pos:Position) {
    var type = TypeRef.fromBaseType(cls, pos);
    var glue = type.getGlueHelperType();
    try {
      // ensure the glue is built
      Context.getType( glue.getClassPath() );
    }
    catch(e:Dynamic) {
      var msg = Std.string(e);
      if (msg.startsWith('Type not found')) {
        // type is not built. build it!
        new DelayedGlue(cls,pos).build();
        cls.meta.add(':ueGluePath', [macro $v{ glue.getClassPath() }], cls.pos );
      } else {
        neko.Lib.rethrow(e);
      }
    }

    return glue.getClassPath();
  }

  var cls:ClassType;
  var pos:Position;
  var typeRef:TypeRef;
  var thisConv:TypeConv;
  var buildFields:Array<Field>;
  var firstExternSuper:TypeConv;

  public function new(cls, pos) {
    this.cls = cls;
    this.pos = pos;
  }

  public function build() {
    var cls = this.cls;
    this.typeRef = TypeRef.fromBaseType( cls, this.pos );
    this.thisConv = TypeConv.get( Context.getLocalType(), this.pos );
    this.buildFields = [];

    var allSuperFields = new Map();
    var ignoreSupers = new Map();
    this.firstExternSuper = null;
    {
      var scls = cls.superClass;
      while (scls != null) {
        var tsup = scls.t.get();
        if (tsup.meta.has(':uextern') && firstExternSuper == null) {
          firstExternSuper = TypeConv.get(TInst(scls.t, scls.params), cls.pos);
        }
        if (firstExternSuper == null) {
          for (field in tsup.fields.get())
            ignoreSupers[field.name] = true;
        } else {
          for (field in tsup.fields.get())
            allSuperFields[field.name] = field;
        }
        scls = tsup.superClass;
      }
    }

    // TODO: clean up those references with a better interface
    var uprops = new Map(),
        superCalls = new Map();
    for (prop in MacroHelpers.extractStrings( cls.meta, ':uproperties' )) {
      uprops[prop] = null;
    }
    for (scall in MacroHelpers.extractStrings( cls.meta, ':usupercalls' )) {
      trace('here', ignoreSupers[scall]);
      // if the field was already overriden in a previous Haxe declaration,
      // we should not build the super call
      if (!ignoreSupers.exists(scall))
        superCalls[scall] = null;
    }

    for (field in cls.fields.get()) {
      if (uprops.exists(field.name)) {
        uprops[field.name] = { cf:field, isStatic:false };
      } else if (superCalls.exists(field.name)) {
        superCalls[field.name] = field;
      }
    }
    for (field in cls.statics.get()) {
      if (uprops.exists(field.name))
        uprops[field.name] = { cf:field, isStatic:true };
    }

    for (scall in superCalls) {
      // use a previous declaration to not force build typed expressions just yet
      var superField = allSuperFields[scall.name];
      if (superField == null) throw 'assert';
      this.handleSuperCall(scall, superField);
    }

    for (uprop in uprops) {
    }

    var glue = this.typeRef.getGlueHelperType();
    var glueHeaderIncludes = this.thisConv.glueHeaderIncludes;
    var glueCppIncludes = this.thisConv.glueCppIncludes;

    if (glueHeaderIncludes != null && glueHeaderIncludes.length > 0)
      cls.meta.add(':glueHeaderIncludes', [ for (inc in glueHeaderIncludes) macro $v{inc} ], this.pos);
    if (glueCppIncludes != null && glueCppIncludes.length > 0)
      cls.meta.add(':glueCppIncludes', [ for (inc in glueCppIncludes) macro $v{inc} ], this.pos);

    Context.defineType({
      pack: glue.pack,
      name: glue.name,
      pos: this.pos,
      meta: [
        { name:':unrealGlue', pos:this.pos },
      ],
      isExtern: true,
      kind: TDClass(),
      fields: this.buildFields,
    });
  }

  private function handleSuperCall(field:ClassField, superField:ClassField) {
    var args = null, ret = null;
    switch( Context.follow(superField.type) ) {
      case TFun(targs, tret):
        args = [ for (arg in targs) { name:arg.name, type:TypeConv.get(arg.t, field.pos) } ];
        ret = TypeConv.get(tret, field.pos);
      case _:
        throw 'assert';
    }

    var glue = this.typeRef.getGlueHelperType();
    var externName = field.name;
    var headerDef = new HelperBuf(),
        cppDef = new HelperBuf();
    headerDef = headerDef + 'static ' + ret.glueType.getCppType() + ' ' + externName + '(';
    cppDef = cppDef + ret.glueType.getCppType() + ' ' + glue.getCppClass() + '_obj::' + externName + '(';
    var thisDef = thisConv.glueType.getCppType() + ' self';
    headerDef += thisDef;
    cppDef += thisDef;

    if (args.length > 0) {
      var argsDef = [ for (arg in args) arg.type.glueType.getCppType() + ' ' + arg.name ].join(', ');
      headerDef = headerDef + ', ' + argsDef;
      cppDef = cppDef + ', ' + argsDef;
    }
    headerDef += ');';
    cppDef += ') {\n\t';

    // CPP signature to call a virtual function non-virtually: ref->::path::to::Type::field(arg1,arg2,...,argn)
    {
      var cppBody = new HelperBuf() + this.thisConv.glueToUe('self') + '->' + this.firstExternSuper.ueType.getCppClass() + '::' + superField.name + '(';
      cppBody.mapJoin(args, function(arg) return arg.type.glueToUe(arg.name));
      cppBody += ')';
      if (!ret.haxeType.isVoid())
        cppDef = cppDef + 'return ' + ret.ueToGlue(cppBody.toString()) + ';\n}';
      else
        cppDef = cppDef + cppBody + ';\n}';
    }

    var allTypes = [ for (arg in args) arg.type ];
    allTypes.push(ret);
    var headerIncludes = [ for (t in allTypes) if(t.glueHeaderIncludes != null) for (inc in t.glueHeaderIncludes) inc => inc ];
    var cppIncludes = [ for (t in allTypes) if(t.glueCppIncludes != null) for (inc in t.glueCppIncludes) inc => inc ];

    var metas:Metadata = [
      { name: ':glueHeaderCode', params:[macro $v{headerDef.toString()}], pos: field.pos },
      { name: ':glueCppCode', params:[macro $v{cppDef.toString()}], pos: field.pos },
      { name: ':glueHeaderIncludes', params:[ for (inc in headerIncludes) macro $v{inc} ], pos: field.pos },
      { name: ':glueCppIncludes', params:[ for (inc in cppIncludes) macro $v{inc} ], pos: field.pos },
    ];
    for (meta in metas) {
      field.meta.add(meta.name, meta.params, meta.pos);
    }

    this.buildFields.push({
      name: externName,
      access: [APublic,AStatic],
      kind: FFun({
        args: [
            { name: 'self', type: this.thisConv.haxeGlueType.toComplexType() }
          ].concat([ for (arg in args) { name: arg.name, type: arg.type.haxeGlueType.toComplexType() } ]),
        ret: ret.haxeGlueType.toComplexType(),
        expr: null
      }),
      pos: field.pos
    });
  }

#end
}
