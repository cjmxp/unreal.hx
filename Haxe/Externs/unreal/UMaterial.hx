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
  
  A Material is an asset which can be applied to a mesh to control the visual look of the scene. In general,
  when light from the scene hits the surface, the shading model of the material is used to calculate how
  that light interacts with the surface.
**/
@:glueCppIncludes("Materials/Material.h")
@:uextern extern class UMaterial extends unreal.UMaterialInterface {
  
  /**
    Guid that uniquely identifies this material.
    Any changes to the state of the material that do not appear separately in the shadermap DDC keys must cause this guid to be regenerated!
    For example, a modification to the Expressions array.
    Code changes that cause the guid to be regenerated on load should be avoided, as that requires a resave of the content to stop recompiling every load.
  **/
  public var StateId : unreal.FGuid;
  
  /**
    This is the refraction depth bias, larger values offset distortion to prevent closer objects from rendering into the distorted surface at acute viewing angles but increases the disconnect between surface and where the refraction starts.
  **/
  public var RefractionDepthBias : unreal.Float32;
  
  /**
    If multiple nodes with the same  type are inserted at the same point, this defined order and if they get combined, only used if domain is PostProcess
  **/
  public var BlendablePriority : unreal.Int32;
  
  /**
    Where the node is inserted in the (post processing) graph, only used if domain is PostProcess
  **/
  public var BlendableLocation : unreal.EBlendableLocation;
  
  /**
    true if we have printed a warning about material usage for a given usage flag.
  **/
  public var UsageFlagWarnings : unreal.FakeUInt32;
  
  /**
    true if this is a special material used for stats by the material editor.
  **/
  public var bIsMaterialEditorStatsMaterial : Bool;
  
  /**
    If true the compilation environment will be changed to remove the global COMPILE_SHADERS_FOR_DEVELOPMENT flag.
  **/
  public var bAllowDevelopmentShaderCompile : Bool;
  
  /**
    When true, translucent materials are fogged. Defaults to true.
  **/
  public var bUseTranslucencyVertexFog : Bool;
  
  /**
    when true, the material attributes pin is used instead of the regular pins.
  **/
  public var bUseMaterialAttributes : Bool;
  
  /**
    true if Material is the preview material used in the material editor.
  **/
  public var bIsPreviewMaterial : Bool;
  
  /**
    true if Material is masked and uses custom opacity
  **/
  @:deprecated public var bIsMasked_DEPRECATED : Bool;
  
  /**
    true if this Material can be assumed Opaque when set to masked.
  **/
  public var bCanMaskedBeAssumedOpaque : Bool;
  
  /**
    Array of all parameter collections this material depends on.
  **/
  public var MaterialParameterCollectionInfos : unreal.TArray<unreal.FMaterialParameterCollectionInfo>;
  
  /**
    Array of all functions this material depends on.
  **/
  public var MaterialFunctionInfos : unreal.TArray<unreal.FMaterialFunctionInfo>;
  #if WITH_EDITORONLY_DATA
  
  /**
    Array of comments associated with this material; viewed in the material editor.
  **/
  public var EditorComments : unreal.TArray<unreal.UMaterialExpressionComment>;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Array of material expressions, excluding Comments.  Used by the material editor.
  **/
  public var Expressions : unreal.TArray<unreal.UMaterialExpression>;
  public var EditorYaw : unreal.Int32;
  public var EditorPitch : unreal.Int32;
  public var EditorY : unreal.Int32;
  public var EditorX : unreal.Int32;
  
  /**
    Skips outputting velocity during the base pass.
  **/
  public var bOutputVelocityOnBasePass : Bool;
  
  /**
    Enables a wireframe view of the mesh the material is applied to.
  **/
  public var Wireframe : Bool;
  public var MaxDisplacement : unreal.Float32;
  
  /**
    Enables adaptive tessellation, which tries to maintain a uniform number of pixels per triangle.
  **/
  public var bEnableAdaptiveTessellation : Bool;
  
  /**
    Prevents cracks in the surface of the mesh when using tessellation.
  **/
  public var bEnableCrackFreeDisplacement : Bool;
  
  /**
    The type of tessellation to apply to this object.  Note D3D11 required for anything except MTM_NoTessellation.
  **/
  public var D3D11TessellationMode : unreal.EMaterialTessellationMode;
  
  /**
    Enables high quality reflections in the forward renderer. Enabling this setting reduces the number of samplers available to the material as two more samplers will be used for reflection cubemaps.
  **/
  public var bUseHQForwardReflections : Bool;
  
  /**
    Use lightmap directionality and per pixel normals. If disabled, lighting from lightmaps will be flat but cheaper.
  **/
  public var bUseLightmapDirectionality : Bool;
  
  /**
    Forces the material to be completely rough. Saves a number of instructions and one sampler.
  **/
  public var bFullyRough : Bool;
  
  /**
    Whether to automatically set usage flags based on what the material is applied to in the editor.
    It can be useful to disable this on a base material with many instances, where adding another usage flag accidentally (eg bUsedWithSkeletalMeshes) can add a lot of shader permutations.
  **/
  public var bAutomaticallySetUsageInEditor : Bool;
  
  /**
    Indicates that the material and its instances can be use with Slate UI and UMG
    This will result in the shaders required to support UI materials being compiled which will increase shader compile time and memory usage.
  **/
  @:deprecated public var bUsedWithUI_DEPRECATED : Bool;
  
  /**
    Indicates that the material and its instances can be use with clothing
    This will result in the shaders required to support clothing being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithClothing : Bool;
  
  /**
    Indicates that the material and its instances can be use with distortion
    This will result in the shaders required to support distortion being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsesDistortion : Bool;
  
  /**
    Indicates that the material and its instances can be use with instanced static meshes
    This will result in the shaders required to support instanced static meshes being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithInstancedStaticMeshes : Bool;
  
  /**
    Indicates that the material and its instances can be use with spline meshes
    This will result in the shaders required to support spline meshes being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithSplineMeshes : Bool;
  
  /**
    Indicates that the material and its instances can be use with morph targets
    This will result in the shaders required to support morph targets being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithMorphTargets : Bool;
  
  /**
    Indicates that the material and its instances can be use with fluid surfaces
    This will result in the shaders required to support fluid surfaces being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithFluidSurfaces : Bool;
  
  /**
    Indicates that the material and its instances can be use with static lighting
    This will result in the shaders required to support static lighting being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithStaticLighting : Bool;
  
  /**
    Indicates that the material and its instances can be use with mesh particles
    This will result in the shaders required to support mesh particles being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithMeshParticles : Bool;
  
  /**
    Indicates that the material and its instances can be use with beam trails
    This will result in the shaders required to support beam trails being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithBeamTrails : Bool;
  
  /**
    Indicates that the material and its instances can be use with particle sprites
    This will result in the shaders required to support particle sprites being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithParticleSprites : Bool;
  
  /**
    Indicates that the material and its instances can be use with landscapes
    This will result in the shaders required to support landscapes being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithLandscape : Bool;
  
  /**
    Indicates that the material and its instances can be use with editor compositing
    This will result in the shaders required to support editor compositing being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithEditorCompositing : Bool;
  
  /**
    Indicates that the material and its instances can be use with skeletal meshes.
    This will result in the shaders required to support skeletal meshes being compiled which will increase shader compile time and memory usage.
  **/
  public var bUsedWithSkeletalMesh : Bool;
  
  /**
    This is a special usage flag that allows a material to be assignable to any primitive type.
    This is useful for materials used by code to implement certain viewmodes, for example the default material or lighting only material.
    The cost is that nearly 20x more shaders will be compiled for the material than the average material, which will greatly increase shader compile time and memory usage.
    This flag should only be enabled when absolutely necessary, and is purposefully not exposed to the UI to prevent abuse.
  **/
  public var bUsedAsSpecialEngineMaterial : Bool;
  
  /**
    If enabled, the material's opacity defines how much GI is blocked when using the LightPropagationVolume feature
  **/
  public var bBlockGI : Bool;
  
  /**
    If enabled, the material's emissive colour is injected into the LightPropagationVolume
  **/
  public var bUseEmissiveForDynamicAreaLighting : Bool;
  
  /**
    Whether the material takes a tangent space normal or a world space normal as input.
    (TangentSpace requires extra instructions but is often more convenient).
  **/
  public var bTangentSpaceNormal : Bool;
  
  /**
    Whether to generate spherical normals for particles that use this material.
  **/
  public var bGenerateSphericalParticleNormals : Bool;
  
  /**
    Whether to draw on top of opaque pixels even if behind them. This only has meaning for translucency.
  **/
  public var bDisableDepthTest : Bool;
  
  /**
    Local space distance to bias the translucent shadow.  Positive values move the shadow away from the light.
  **/
  public var TranslucentShadowStartOffset : unreal.Float32;
  
  /**
    Colored extinction factor used to approximate multiple scattering in dense volumes.
    This is only used when the object is casting a volumetric translucent shadow.
  **/
  public var TranslucentMultipleScatteringExtinction : unreal.FLinearColor;
  
  /**
    Controls how diffuse the material's backscattering is when using the MSM_Subsurface shading model.
    Larger exponents give a less diffuse look (smaller, brighter backscattering highlight).
    This is only used when the object is casting a volumetric translucent shadow from a directional light.
  **/
  public var TranslucentBackscatteringExponent : unreal.Float32;
  
  /**
    Controls the strength of the second self shadow gradient.
  **/
  public var TranslucentSelfShadowSecondOpacity : unreal.Float32;
  
  /**
    Used to make a second self shadow gradient, to add interesting shading in the shadow of the first.
  **/
  public var TranslucentSelfShadowSecondDensityScale : unreal.Float32;
  
  /**
    Scale used to make translucent self-shadowing more or less opaque than the material's shadow on other objects.
    This is only used when the object is casting a volumetric translucent shadow.
  **/
  public var TranslucentSelfShadowDensityScale : unreal.Float32;
  
  /**
    Scale used to make translucent shadows more or less opaque than the material's actual opacity.
  **/
  public var TranslucentShadowDensityScale : unreal.Float32;
  
  /**
    Useful for artificially increasing the influence of the normal on the lighting result for translucency.
    A value larger than 1 increases the influence of the normal, a value smaller than 1 makes the lighting more ambient.
  **/
  public var TranslucencyDirectionalLightingIntensity : unreal.Float32;
  
  /**
    Sets the lighting mode that will be used on this material if it is translucent.
  **/
  public var TranslucencyLightingMode : unreal.ETranslucencyLightingMode;
  
  /**
    Number of customized UV inputs to display.  Unconnected customized UV inputs will just pass through the vertex UVs.
  **/
  public var NumCustomizedUVs : unreal.Int32;
  
  /**
    Dither opacity mask. When combined with Temporal AA this can be used as a form of limited translucency which supports all lighting features.
  **/
  public var DitherOpacityMask : Bool;
  
  /**
    Whether the material should support a dithered LOD transition when used with the foliage system.
  **/
  public var DitheredLODTransition : Bool;
  
  /**
    Indicates that the material should be rendered without backface culling and the normal should be flipped for backfaces.
  **/
  public var TwoSided : Bool;
  
  /**
    SSR on translucency
  **/
  public var bScreenSpaceReflections : Bool;
  
  /**
    Indicates that the material should be rendered using responsive anti-aliasing. Improves sharpness of small moving particles such as sparks.
    Only use for small moving features because it will cause aliasing of the background.
  **/
  public var bEnableResponsiveAA : Bool;
  
  /**
    Indicates that the material should be rendered in the SeparateTranslucency Pass (not affected by DOF, requires bAllowSeparateTranslucency to be set in .ini).
  **/
  public var bEnableSeparateTranslucency : Bool;
  public var PixelDepthOffset : unreal.FScalarMaterialInput;
  public var MaterialAttributes : unreal.FMaterialAttributesInput;
  
  /**
    output refraction index for translucent rendering
    Air:1.0 Water:1.333 Ice:1.3 Glass:~1.6 Diamond:2.42
  **/
  public var Refraction : unreal.FScalarMaterialInput;
  
  /**
    output ambient occlusion to the GBuffer
  **/
  public var AmbientOcclusion : unreal.FScalarMaterialInput;
  public var ClearCoatRoughness : unreal.FScalarMaterialInput;
  public var ClearCoat : unreal.FScalarMaterialInput;
  
  /**
    Inner material color, only used for ShadingModel=Subsurface
  **/
  public var SubsurfaceColor : unreal.FColorMaterialInput;
  
  /**
    Multiplies the tessellation factors applied when a tessellation mode is set.
  **/
  public var TessellationMultiplier : unreal.FScalarMaterialInput;
  
  /**
    Offset in world space applied to tessellated vertices.
  **/
  public var WorldDisplacement : unreal.FVectorMaterialInput;
  
  /**
    Adds to world position in the vertex shader.
  **/
  public var WorldPositionOffset : unreal.FVectorMaterialInput;
  
  /**
    If BlendMode is BLEND_Masked, the surface is not rendered where OpacityMask < OpacityMaskClipValue.
  **/
  public var OpacityMaskClipValue : unreal.Float32;
  
  /**
    Defines how the material reacts on DBuffer decals (Affects look, performance and texture/sample usage).
    Non DBuffer Decals can be disabled on the primitive (e.g. static mesh)
  **/
  public var MaterialDecalResponse : unreal.EMaterialDecalResponse;
  
  /**
    Defines how the GBuffer chanels are getting manipulated by a decal material pass. (only with MaterialDomain == MD_DeferredDecal)
  **/
  public var DecalBlendMode : unreal.EDecalBlendMode;
  
  /**
    Determines how the material's color is blended with background colors.
  **/
  public var BlendMode : unreal.EBlendMode;
  
  /**
    The domain that the material's attributes will be evaluated in.
    Certain pieces of material functionality are only valid in certain domains, for example vertex normal is only valid on a surface.
  **/
  public var MaterialDomain : unreal.EMaterialDomain;
  public var OpacityMask : unreal.FScalarMaterialInput;
  
  /**
    Transmission.
  **/
  public var Opacity : unreal.FScalarMaterialInput;
  
  /**
    Emission.
  **/
  public var EmissiveColor : unreal.FColorMaterialInput;
  public var Normal : unreal.FVectorMaterialInput;
  public var Roughness : unreal.FScalarMaterialInput;
  public var Specular : unreal.FScalarMaterialInput;
  public var Metallic : unreal.FScalarMaterialInput;
  public var BaseColor : unreal.FColorMaterialInput;
  @:deprecated public var SpecularColor_DEPRECATED : unreal.FColorMaterialInput;
  
  /**
    Reflection.
  **/
  @:deprecated public var DiffuseColor_DEPRECATED : unreal.FColorMaterialInput;
  
  /**
    Physical material to use for this graphics material. Used for sounds, effects etc.
  **/
  public var PhysMaterial : unreal.UPhysicalMaterial;
  
}
