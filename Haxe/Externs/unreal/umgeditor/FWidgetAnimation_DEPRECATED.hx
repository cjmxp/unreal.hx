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
package unreal.umgeditor;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Struct used only for loading old animations
**/
@:umodule("UMGEditor")
@:glueCppIncludes("WidgetBlueprint.h")
@:noCopy @:noEquals @:uextern extern class FWidgetAnimation_DEPRECATED {
  public var AnimationBindings : unreal.TArray<unreal.umg.FWidgetAnimationBinding>;
  public var MovieScene : unreal.moviescene.UMovieScene;
  
}
