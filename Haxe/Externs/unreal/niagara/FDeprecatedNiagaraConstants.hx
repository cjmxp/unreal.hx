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
package unreal.niagara;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Dummy struct used to serialize in the old layout of FNiagaraConstants
  This should be removed once everyone has recompiled and saved their scripts.
**/
@:umodule("Niagara")
@:glueCppIncludes("NiagaraScript.h")
@:noCopy @:noEquals @:uextern extern class FDeprecatedNiagaraConstants {
  @:deprecated public var MatrixConstants_DEPRECATED : unreal.TArray<unreal.FMatrix>;
  @:deprecated public var VectorConstants_DEPRECATED : unreal.TArray<unreal.FVector4>;
  @:deprecated public var ScalarConstants_DEPRECATED : unreal.TArray<unreal.Float32>;
  @:deprecated public var MatrixConstantsInfo_DEPRECATED : unreal.TArray<unreal.niagara.FNiagaraVariableInfo>;
  @:deprecated public var VectorConstantsInfo_DEPRECATED : unreal.TArray<unreal.niagara.FNiagaraVariableInfo>;
  
  /**
    DEPRECATED PROPERTIES. REMOVE SOON!
  **/
  @:deprecated public var ScalarConstantsInfo_DEPRECATED : unreal.TArray<unreal.niagara.FNiagaraVariableInfo>;
  
}
