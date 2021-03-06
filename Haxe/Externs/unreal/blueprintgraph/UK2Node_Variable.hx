/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.blueprintgraph;

@:umodule("BlueprintGraph")
@:glueCppIncludes("K2Node_Variable.h")
@:uextern extern class UK2Node_Variable extends unreal.blueprintgraph.UK2Node {
  
  /**
    Name of variable
  **/
  @:deprecated private var VariableName_DEPRECATED : unreal.FName;
  
  /**
    Class that this variable is defined in. Should be NULL if bSelfContext is true.
  **/
  @:deprecated private var VariableSourceClass_DEPRECATED : unreal.TSubclassOf<unreal.UObject>;
  public var SelfContextInfo : unreal.blueprintgraph.ESelfContextInfo;
  
  /**
    Reference to variable we want to set/get
  **/
  public var VariableReference : unreal.FMemberReference;
  
}
