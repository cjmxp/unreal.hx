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
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Materials/MaterialExpressionSphericalParticleOpacity.h")
@:noClass @:uextern extern class UMaterialExpressionSphericalParticleOpacity extends unreal.UMaterialExpression {
  
  /**
    Constant density of the particle sphere.  Will be overridden if Density is connected.
  **/
  public var ConstantDensity : unreal.Float32;
  
  /**
    Defaults to 'ConstantDensity' if not specified
  **/
  public var Density : unreal.FExpressionInput;
  
}
