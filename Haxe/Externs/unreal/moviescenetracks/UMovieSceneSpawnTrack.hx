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
package unreal.moviescenetracks;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Handles when a spawnable should be spawned and destroyed
**/
@:umodule("MovieSceneTracks")
@:glueCppIncludes("Tracks/MovieSceneSpawnTrack.h")
@:uextern extern class UMovieSceneSpawnTrack extends unreal.moviescene.UMovieSceneNameableTrack {
  
  /**
    The guid relating to the object we are to spawn and destroy
  **/
  private var ObjectGuid : unreal.FGuid;
  
  /**
    All the sections in this track
  **/
  private var Sections : unreal.TArray<unreal.moviescene.UMovieSceneSection>;
  
}
