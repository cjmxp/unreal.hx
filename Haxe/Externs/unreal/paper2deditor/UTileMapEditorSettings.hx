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
package unreal.paper2deditor;


/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  Settings for the Paper2D tile map editor
**/
@:umodule("Paper2DEditor")
@:glueCppIncludes("Private/TileMapEditing/TileMapEditorSettings.h")
@:noClass @:uextern extern class UTileMapEditorSettings extends unreal.UObject {
  
  /**
    Should the grid be shown by default when the editor is opened?
  **/
  public var bShowGridByDefault : Bool;
  
  /**
    Default background color for new tile map assets
  **/
  public var DefaultBackgroundColor : unreal.FColor;
  
}
