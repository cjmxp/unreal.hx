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
package unreal;

@:glueCppIncludes("Engine/UserDefinedStruct.h")
@:uname("EUserDefinedStructureStatus")
@:uextern extern enum EUserDefinedStructureStatus {
  
  /**
    Struct is in an unknown state.
  **/
  UDSS_UpToDate;
  
  /**
    Struct has been modified but not recompiled.
  **/
  UDSS_Dirty;
  
  /**
    Struct tried but failed to be compiled.
  **/
  UDSS_Error;
  
  /**
    Struct is a duplicate, the original one was changed.
  **/
  UDSS_Duplicate;
  
}
