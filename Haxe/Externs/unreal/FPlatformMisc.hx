package unreal;

@:glueCppIncludes("Engine.h")
@:noEquals @:noCopy @:uextern extern class FPlatformMisc {
  /**
   * Retrieve the Mac address of the current adapter.
   *
   * @return array of bytes representing the Mac address, or empty array if unable to determine.
   */
  static function GetMacAddress():TArray<UInt8>;

  /**
   * Retrieve the Mac address of the current adapter as a string.
   *
   * @return String representing the Mac address, or empty string.
   */
  static function GetMacAddressString():FString;

  /**
   * Retrieve the Mac address of the current adapter as a hashed string (privacy)
   *
   * @return String representing the hashed Mac address, or empty string.
   */
  static function GetHashedMacAddressString():FString;

  /**
   * Returns a unique string for device identification
   *
   * @return the unique string generated by this platform for this device
   */
  static function GetUniqueDeviceId():FString;

  /** Return true if a debugger is present */
  static function IsDebuggerPresent():Bool;

  /**
   * Requests application exit.
   *
   * @param	Force	If true, perform immediate exit (dangerous because config code isn't flushed, etc).
   *                  If false, request clean main-loop exit from the platform specific code.
   */
  static function RequestExit( Force:Bool ):Void;

  /** Copies text to the operating system clipboard. */
  static function ClipboardCopy(str:TCharStar):Void;

  /** Pastes in text from the operating system clipboard. */
  static function ClipboardPaste(dest:PRef<FString>):Void;

  /**
   * Prevents screen-saver from kicking in by moving the mouse by 0 pixels. This works even on
   * Vista in the presence of a group policy for password protected screen saver.
   */
  static function PreventScreenSaver():Void;

  /**
   * return the number of hardware CPU cores
   */
  static function NumberOfCores():Int;

  /** Get the application root directory. */
  static function RootDir():TCharStar;

  /** Get the engine directory */
  static function EngineDir():TCharStar;

  /** Get the directory the application was launched from (useful for commandline utilities) */
  static function LaunchDir():TCharStar;

  /** Function to store the current working directory for use with LaunchDir() */
  static function CacheLaunchDir():Void;

  /**
   *	Return the GameDir
   */
  static function GameDir():TCharStar;
}
