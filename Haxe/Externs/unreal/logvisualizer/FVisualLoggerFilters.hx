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
package unreal.logvisualizer;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("LogVisualizer")
@:glueCppIncludes("LogVisualizerSettings.h")
@:noCopy @:noEquals @:uextern extern class FVisualLoggerFilters {
  public var SelectedClasses : unreal.TArray<unreal.FString>;
  public var Categories : unreal.TArray<unreal.logvisualizer.FCategoryFilter>;
  public var ObjectNameFilter : unreal.FString;
  public var SearchBoxFilter : unreal.FString;
  
}
