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

@:glueCppIncludes("AI/Navigation/NavigationPath.h")
@:uname("ENavigationOptionFlag.Type")
@:uextern extern enum ENavigationOptionFlag {
  Default;
  
  /**
    Yes
  **/
  @DisplayName("Yes")
  Enable;
  
  /**
    UHT was complaining when tried to use True as value instead of Enable
    @DisplayName No
  **/
  @DisplayName("No")
  Disable;
  MAX;
  
}