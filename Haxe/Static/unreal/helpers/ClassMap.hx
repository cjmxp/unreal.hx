package unreal.helpers;
import cpp.Function;
import unreal.UIntPtr;

@:native('unreal.helpers.ClassMap')
@:include("ClassMap.h") extern class ClassMap {
  /**
   * Adds a wrapper so that given `inUClass`, the function `wrapper` will be called to wrap it
   **/
  static function addWrapper(inUClass:UIntPtr, inWrapper:Function<UIntPtr->UIntPtr, cpp.abi.Abi>):Void;

  /**
   * Given `inUObject`, find the best wrapper and return the Haxe wrapper to it
   **/
  static function wrap(inUObject:UIntPtr):UIntPtr;
}
