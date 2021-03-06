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


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Float curve data for one track
**/
@:glueCppIncludes("Animation/AnimSequenceBase.h")
@:noCopy @:noEquals @:uextern extern class FAnimCurveBase {
  
  /**
    Last observed name of the curve. We store this so we can recover from situations that
    mean the skeleton doesn't have a mapped name for our UID (such as a user saving the an
    animation but not the skeleton).
  **/
  public var LastObservedName : unreal.FName;
  
}
