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
package unreal.editor;


/**
  Engine that drives the Editor.
  Separate from UGameEngine because it may have much different functionality than desired for an instance of a game itself.
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Editor/EditorEngine.h")
@:uextern extern class UEditorEngine extends unreal.UEngine {
  
  /**
    Brush builders that have been created in the editor
  **/
  public var BrushBuilders : unreal.TArray<unreal.UBrushBuilder>;
  
  /**
    If true, then draw particle debug helpers in editor viewports
  **/
  public var bDrawParticleHelpers : Bool;
  
  /**
    If true, then draw sockets when socket snapping is enabled in 'g' mode
  **/
  public var bDrawSocketsInGMode : Bool;
  
  /**
    The distance to place the camera from an emitter actor when custom zooming is enabled
  **/
  public var CustomCameraAlignEmitterDistance : unreal.Float32;
  
  /**
    If "Camera Align" emitter handling uses a custom zoom or not
  **/
  public var bCustomCameraAlignEmitter : Bool;
  
  /**
    When true, the preview mesh mode is activated.
  **/
  public var bShowPreviewMesh : Bool;
  
  /**
    The index of the mesh to use from the list of preview meshes.
  **/
  public var PreviewMeshIndex : unreal.Int32;
  
  /**
    A mesh component used to preview in editor without spawning a static mesh actor.
  **/
  public var PreviewMeshComp : unreal.UStaticMeshComponent;
  public var ScratchRenderTarget256 : unreal.UTextureRenderTarget2D;
  public var ScratchRenderTarget512 : unreal.UTextureRenderTarget2D;
  public var ScratchRenderTarget1024 : unreal.UTextureRenderTarget2D;
  
  /**
    Temporary render target that can be used by the editor.
  **/
  public var ScratchRenderTarget2048 : unreal.UTextureRenderTarget2D;
  
  /**
    Play world url string edited by a user.
  **/
  public var UserEditedPlayWorldURL : unreal.FString;
  
  /**
    When set to anything other than -1, indicates a specific In-Editor viewport index that PIE should use
  **/
  public var PlayInEditorViewportIndex : unreal.Int32;
  
  /**
    Currently targeted device for mobile previewer.
  **/
  public var BuildPlayDevice : unreal.Int32;
  
  /**
    Mobile preview settings for what orientation to default to
  **/
  public var bMobilePreviewPortrait : Bool;
  
  /**
    The current play world destination (I.E console).  -1 means no current play world destination, 0 or more is an index into the GConsoleSupportContainer
  **/
  public var CurrentPlayWorldDestination : unreal.Int32;
  
  /**
    Where did the person want to play? Where to play the game - -1 means in editor, 0 or more is an index into the GConsoleSupportContainer
  **/
  public var PlayWorldDestination : unreal.Int32;
  
  /**
    When Simulating In Editor, a pointer to the original (non-simulating) editor world
  **/
  public var EditorWorld : unreal.UWorld;
  
  /**
    True if we're Simulating In Editor, as opposed to Playing In Editor.  In this mode, simulation takes place right the level editing environment
  **/
  public var bIsSimulatingInEditor : Bool;
  
  /**
    True to enable VR preview mode when launching the game from the editor on PC platform
  **/
  public var bUseVRPreviewForPlayWorld : Bool;
  
  /**
    True to enable mobile preview mode when launching the game from the editor on PC platform
  **/
  public var bUseMobilePreviewForPlayWorld : Bool;
  
  /**
    Did the request include the optional location and rotation?
  **/
  public var bHasPlayWorldPlacement : Bool;
  
  /**
    True if there is a pending end play map queued
  **/
  public var bRequestEndPlayMapQueued : Bool;
  
  /**
    The PlayerStart class used when spawning the player at the current camera location.
  **/
  public var PlayFromHerePlayerStartClass : unreal.TSubclassOf<unreal.ANavigationObjectBase>;
  
  /**
    Allows multipel PIE worlds under a single instance. If false, you can only do multiple UE4 processes for pie networking
  **/
  public var bAllowMultiplePIEWorlds : Bool;
  
  /**
    True if we are requesting to start a simulation-in-editor session
  **/
  public var bIsSimulateInEditorQueued : Bool;
  
  /**
    Has a request to toggle between PIE and SIE been made?
  **/
  public var bIsToggleBetweenPIEandSIEQueued : Bool;
  
  /**
    Has a request for "Play From Here" been made?
  **/
  public var bIsPlayWorldQueued : Bool;
  
  /**
    An optional rotation for the starting location for "Play From Here"
  **/
  public var PlayWorldRotation : unreal.FRotator;
  
  /**
    An optional location for the starting location for "Play From Here"
  **/
  public var PlayWorldLocation : unreal.FVector;
  
  /**
    A pointer to a UWorld that is the duplicated/saved-loaded to be played in with "Play From Here"
  **/
  public var PlayWorld : unreal.UWorld;
  
  /**
    Additional per-user/per-game options set in the .ini file. Should be in the form "?option1=X?option2?option3=Y"
  **/
  public var InEditorGameURLOptions : unreal.FString;
  
  /**
    The name of the file currently being opened in the editor. "" if no file is being opened.
  **/
  public var UserOpenedFile : unreal.FString;
  
  /**
    Actors that are being deleted and should processed in the global re-attach
  **/
  public var ActorsForGlobalReregister : unreal.TArray<unreal.AActor>;
  
  /**
    Array of actor factories created at editor startup and used by context menu etc.
  **/
  public var ActorFactories : unreal.TArray<unreal.editor.UActorFactory>;
  public var HeightMapExportClassName : unreal.FString;
  
  /**
    If true, actors can be grouped and grouping rules will be maintained. When deactivated, any currently existing groups will still be preserved.
  **/
  public var bGroupingActive : Bool;
  
  /**
    If true, same type views will be camera tied, and ortho views will use perspective view for LOD parenting
  **/
  public var bEnableLODLocking : Bool;
  
  /**
    If true, socket snapping is enabled in the main level viewports.
  **/
  public var bEnableSocketSnapping : Bool;
  
  /**
    If true, show translucent marker polygons on the builder brush and volumes.
  **/
  public var bShowBrushMarkerPolys : Bool;
  public var GameCommandLine : unreal.FString;
  public var GodMode : Bool;
  public var UseAxisIndicator : Bool;
  
  /**
    Advanced.
  **/
  public var UseSizingBox : Bool;
  
  /**
    Setting for the detail mode to show in the editor viewports
  **/
  public var DetailMode : unreal.EDetailMode;
  public var MouseMovement : unreal.FVector;
  public var ClickPlane : unreal.FPlane;
  public var ClickLocation : unreal.FVector;
  public var UnsnappedClickLocation : unreal.FVector;
  public var ParentContext : unreal.UPackage;
  
  /**
    Other variables.
  **/
  public var ClickFlags : unreal.FakeUInt32;
  public var IsImportingT3D : Bool;
  
  /**
    Toggles.
  **/
  public var bFastRebuild : Bool;
  public var EditorCylinder : unreal.UStaticMesh;
  public var EditorPlane : unreal.UStaticMesh;
  public var EditorSphere : unreal.UStaticMesh;
  
  /**
    Used in UnrealEd for showing materials
  **/
  public var EditorCube : unreal.UStaticMesh;
  public var PreviewAudioComponent : unreal.UAudioComponent;
  
  /**
    Audio
  **/
  public var PreviewSoundCue : unreal.USoundCue;
  
  /**
    Font used by Canvas-based editors
  **/
  public var EditorFont : unreal.UFont;
  
  /**
    Textures.
  **/
  public var Bad : unreal.UTexture2D;
  public var Trans : unreal.editor.UTransactor;
  public var ConversionTempModel : unreal.UModel;
  
  /**
    Objects.
  **/
  public var TempModel : unreal.UModel;
  
}
