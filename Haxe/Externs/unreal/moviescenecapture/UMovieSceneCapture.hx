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
package unreal.moviescenecapture;


/**
  Class responsible for capturing scene data
**/
@:umodule("MovieSceneCapture")
@:glueCppIncludes("MovieSceneCapture.h")
@:uextern extern class UMovieSceneCapture extends unreal.UObject implements unreal.moviescenecapture.IMovieSceneCaptureInterface {
  
  /**
    Command line arguments inherited from this process
  **/
  public var InheritedCommandLineArguments : unreal.FString;
  
  /**
    Additional command line arguments to pass to the external process when capturing
  **/
  public var AdditionalCommandLineArguments : unreal.FString;
  
  /**
    Whether to capture the movie in a separate process or not
  **/
  public var bUseSeparateProcess : Bool;
  
  /**
    Settings that define how to capture
  **/
  public var Settings : unreal.moviescenecapture.FMovieSceneCaptureSettings;
  
  /**
    Settings specific to the capture protocol
  **/
  public var ProtocolSettings : unreal.UObject;
  
  /**
    The type of capture protocol to use
  **/
  public var CaptureType : unreal.moviescenecapture.FCaptureProtocolID;
  // MovieSceneCaptureInterface interface implementation
  
}