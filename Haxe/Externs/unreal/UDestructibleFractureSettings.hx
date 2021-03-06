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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Information to create an NxDestructibleAsset
**/
@:glueCppIncludes("Engine/DestructibleFractureSettings.h")
@:uextern extern class UDestructibleFractureSettings extends unreal.UObject {
  
  /**
    Per-chunk authoring parameters, which should be made writable when a chunk selection GUI is in place.
  **/
  public var ChunkParameters : unreal.TArray<unreal.FDestructibleChunkParameters>;
  
  /**
    APEX references materials by name, but we'll bypass that mechanism and use of UE materials instead.
  **/
  public var Materials : unreal.TArray<unreal.UMaterialInterface>;
  
  /**
    The mesh's original number of submeshes.  APEX needs to store this in the authoring.
  **/
  public var OriginalSubmeshCount : unreal.Int32;
  
  /**
    Stored Voronoi sites
  **/
  public var VoronoiSites : unreal.TArray<unreal.FVector>;
  
  /**
    Random seed for reproducibility
  **/
  public var RandomSeed : unreal.Int32;
  
  /**
    Stored interior material data.  Just need one as we only support Voronoi splitting.
  **/
  public var FractureMaterialDesc : unreal.FFractureMaterial;
  
  /**
    The number of voronoi cell sites.
  **/
  public var CellSiteCount : unreal.Int32;
  
}
