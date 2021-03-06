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
@:glueCppIncludes("Preferences/PhATSimOptions.h")
@:uextern extern class UPhATSimOptions extends unreal.UObject {
  
  /**
    Controls how large constraints are drawn in PhAT
  **/
  public var ConstraintDrawSize : unreal.Float32;
  
  /**
    Whether to draw bone names in the viewport
  **/
  public var bShowNamesInHierarchy : Bool;
  
  /**
    Whether to draw constraints as points
  **/
  public var bShowConstraintsAsPoints : Bool;
  
  /**
    Strength of the impulse used when poking with left mouse button
  **/
  public var PokeStrength : unreal.Float32;
  
  /**
    How quickly we interpolate the physics target transform for mouse spring forces
  **/
  public var InterpolationSpeed : unreal.Float32;
  
  /**
    Angular stiffness of mouse spring forces
  **/
  public var HandleAngularStiffness : unreal.Float32;
  
  /**
    Angular damping of mouse spring forces
  **/
  public var HandleAngularDamping : unreal.Float32;
  
  /**
    Linear stiffness of mouse spring forces
  **/
  public var HandleLinearStiffness : unreal.Float32;
  
  /**
    Linear damping of mouse spring forces
  **/
  public var HandleLinearDamping : unreal.Float32;
  
  /**
    Dilate time by scale
  **/
  public var TimeDilation : unreal.Float32;
  
  /**
    Max FPS for simulation in PhAT. This is helpful for targeting the same FPS as your game. -1 means disabled
  **/
  public var MaxFPS : unreal.Int32;
  
  /**
    Scale factor for the gravity used in the simulation
  **/
  public var GravScale : unreal.Float32;
  
  /**
    The gap between the floor & physics object (requires restart of PhAT)
  **/
  public var FloorGap : unreal.Float32;
  
  /**
    Time taken to blend from physics to animation.
  **/
  public var PokeBlendTime : unreal.Float32;
  
  /**
    Time between poking ragdoll and starting to blend back.
  **/
  public var PokePauseTime : unreal.Float32;
  
  /**
    Lets you manually control the physics/animation
  **/
  public var bUpdateJointsFromAnimation : Bool;
  
  /**
    Lets you manually control the physics/animation
  **/
  public var PhysicsBlend : unreal.Float32;
  
}
