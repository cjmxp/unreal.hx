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

@:umodule("UnrealEd")
@:glueCppIncludes("Settings/LevelEditorPlaySettings.h")
@:uname("EPlayNetMode")
@:uextern extern enum EPlayNetMode {
  
  /**
    Play Offline
  **/
  @DisplayName("Play Offline")
  PIE_Standalone;
  
  /**
    Play As Listen Server
  **/
  @DisplayName("Play As Listen Server")
  PIE_ListenServer;
  
  /**
    Play As Client
  **/
  @DisplayName("Play As Client")
  PIE_Client;
  
}
