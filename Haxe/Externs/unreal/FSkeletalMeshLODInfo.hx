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
  
  Struct containing information for a particular LOD level, such as materials and info for when to use it.
**/
@:glueCppIncludes("Engine/SkeletalMesh.h")
@:noCopy @:noEquals @:uextern extern class FSkeletalMeshLODInfo {
  
  /**
    This has been removed in editor. We could re-apply this in import time or by mesh reduction utilities
  **/
  public var RemovedBones : unreal.TArray<unreal.FName>;
  
  /**
    Reduction settings to apply when building render data.
  **/
  public var ReductionSettings : unreal.FSkeletalMeshOptimizationSettings;
  
  /**
    Whether to disable morph targets for this LOD.
  **/
  public var bHasBeenSimplified : Bool;
  public var TriangleSortSettings : unreal.TArray<unreal.FTriangleSortSettings>;
  
  /**
    Per-section control over whether to enable shadow casting.
  **/
  @:deprecated public var bEnableShadowCasting_DEPRECATED : unreal.TArray<Bool>;
  
  /**
    Mapping table from this LOD's materials to the USkeletalMesh materials array.
  **/
  public var LODMaterialMap : unreal.TArray<unreal.Int32>;
  
  /**
    Used to avoid 'flickering' when on LOD boundary. Only taken into account when moving from complex->simple.
  **/
  public var LODHysteresis : unreal.Float32;
  
  /**
    Indicates when to use this LOD. A smaller number means use this LOD when further away.
  **/
  public var ScreenSize : unreal.Float32;
  
}
