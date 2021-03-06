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
package unreal.landscape;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("Landscape")
@:glueCppIncludes("LandscapeComponent.h")
@:uextern extern class ULandscapeComponent extends unreal.UPrimitiveComponent {
  
  /**
    Generated weight/normal map texture used for ES2. Serialized only when cooking or loading cooked builds.
  **/
  public var MobileWeightNormalmapTexture : unreal.UTexture2D;
  
  /**
    Material interface used for ES2. Serialized only when cooking or loading cooked builds.
  **/
  public var MobileMaterialInterface : unreal.UMaterialInterface;
  
  /**
    For ES2
  **/
  public var MobileBlendableLayerMask : unreal.UInt8;
  #if WITH_EDITORONLY_DATA
  
  /**
    Hash of source for ES2 generated data. Used for mobile preview and cook-in-editor
    to determine if we need to re-generate ES2 pixel data.
  **/
  public var MobileDataSourceHash : unreal.FGuid;
  
  /**
    Data texture used for selection mask
  **/
  public var SelectDataTexture : unreal.UTexture2D;
  
  /**
    List of layers allowed to be painted on this component
  **/
  public var LayerWhitelist : unreal.TArray<unreal.landscape.ULandscapeLayerInfoObject>;
  
  /**
    LOD level Bias to use when lighting buidling via lightmass, -1 Means automatic LOD calculation based on ForcedLOD + LODBias
  **/
  public var LightingLODBias : unreal.Int32;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Pre-baked Base Color texture for use by distance field GI
  **/
  public var GIBakedBaseColorTexture : unreal.UTexture2D;
  
  /**
    The Material Guid that used when baking, to detect material recompilations
  **/
  public var BakedTextureMaterialGuid : unreal.FGuid;
  public var StateId : unreal.FGuid;
  
  /**
    LOD level Bias to use when rendering
  **/
  public var LODBias : unreal.Int32;
  
  /**
    Forced LOD level to use when rendering
  **/
  public var ForcedLOD : unreal.Int32;
  
  /**
    StaticLightingResolution overriding per component, default value 0 means no overriding
  **/
  public var StaticLightingResolution : unreal.Float32;
  
  /**
    Heightfield mipmap used to generate collision
  **/
  public var CollisionMipLevel : unreal.Int32;
  
  /**
    INTERNAL: Array of lights that don't apply to the terrain component.
  **/
  public var IrrelevantLights : unreal.TArray<unreal.FGuid>;
  
  /**
    Cached local-space bounding box, created at heightmap update time
  **/
  public var CachedLocalBox : unreal.FBox;
  
  /**
    Heightmap texture reference
  **/
  public var HeightmapTexture : unreal.UTexture2D;
  
  /**
    UV offset to Heightmap data from component local coordinates
  **/
  public var HeightmapScaleBias : unreal.FVector4;
  
  /**
    U or V offset into the weightmap for the first subsection, in texture UV space
  **/
  public var WeightmapSubsectionOffset : unreal.Float32;
  
  /**
    UV offset to component's weightmap data from component local coordinates
  **/
  public var WeightmapScaleBias : unreal.FVector4;
  
  /**
    XYOffsetmap texture reference
  **/
  public var XYOffsetmapTexture : unreal.UTexture2D;
  
  /**
    Weightmap texture reference
  **/
  public var WeightmapTextures : unreal.TArray<unreal.UTexture2D>;
  
  /**
    List of layers, and the weightmap and channel they are stored
  **/
  public var WeightmapLayerAllocations : unreal.TArray<unreal.landscape.FWeightmapLayerAllocationInfo>;
  public var MaterialInstance : unreal.UMaterialInstanceConstant;
  public var OverrideHoleMaterial : unreal.UMaterialInterface;
  public var OverrideMaterial : unreal.UMaterialInterface;
  
  /**
    Number of subsections in X or Y axis
  **/
  public var NumSubsections : unreal.Int32;
  
  /**
    Number of quads for a subsection of the component. SubsectionSizeQuads+1 must be a power of two.
  **/
  public var SubsectionSizeQuads : unreal.Int32;
  
  /**
    Total number of quads for this component, has to be >0
  **/
  public var ComponentSizeQuads : unreal.Int32;
  
  /**
    Y offset from global components grid origin (in quads)
  **/
  public var SectionBaseY : unreal.Int32;
  
  /**
    X offset from global components grid origin (in quads)
  **/
  public var SectionBaseX : unreal.Int32;
  
}
