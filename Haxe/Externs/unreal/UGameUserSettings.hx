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
  Stores user settings for a game (for example graphics and sound settings), with the ability to save and load to and from a file.
**/
@:glueCppIncludes("GameFramework/GameUserSettings.h")
@:uextern extern class UGameUserSettings extends unreal.UObject {
  
  /**
    Applies all current user settings to the game and saves to permanent storage (e.g. file), optionally checking for command line overrides.
  **/
  public function ApplySettings(bCheckForCommandLineOverrides : Bool) : Void;
  public function ApplyNonResolutionSettings() : Void;
  @:final public function ApplyResolutionSettings(bCheckForCommandLineOverrides : Bool) : Void;
  
  /**
    Returns the user setting for game screen resolution, in pixels.
  **/
  @:thisConst @:final public function GetScreenResolution() : unreal.FIntPoint;
  
  /**
    Returns the last confirmed user setting for game screen resolution, in pixels.
  **/
  @:thisConst @:final public function GetLastConfirmedScreenResolution() : unreal.FIntPoint;
  
  /**
    Sets the user setting for game screen resolution, in pixels.
  **/
  @:final public function SetScreenResolution(Resolution : unreal.FIntPoint) : Void;
  
  /**
    Returns the user setting for game window fullscreen mode.
  **/
  @:thisConst @:final public function GetFullscreenMode() : unreal.EWindowMode;
  
  /**
    Returns the last confirmed user setting for game window fullscreen mode.
  **/
  @:thisConst @:final public function GetLastConfirmedFullscreenMode() : unreal.EWindowMode;
  
  /**
    Sets the user setting for the game window fullscreen mode. See UGameUserSettings::FullscreenMode.
  **/
  @:final public function SetFullscreenMode(InFullscreenMode : unreal.EWindowMode) : Void;
  
  /**
    Sets the user setting for vsync. See UGameUserSettings::bUseVSync.
  **/
  @:final public function SetVSyncEnabled(bEnable : Bool) : Void;
  
  /**
    Returns the user setting for vsync.
  **/
  @:thisConst @:final public function IsVSyncEnabled() : Bool;
  
  /**
    Checks if the Screen Resolution user setting is different from current
  **/
  @:thisConst @:final public function IsScreenResolutionDirty() : Bool;
  
  /**
    Checks if the FullscreenMode user setting is different from current
  **/
  @:thisConst @:final public function IsFullscreenModeDirty() : Bool;
  
  /**
    Checks if the vsync user setting is different from current system setting
  **/
  @:thisConst @:final public function IsVSyncDirty() : Bool;
  
  /**
    Mark current video mode settings (fullscreenmode/resolution) as being confirmed by the user
  **/
  @:final public function ConfirmVideoMode() : Void;
  
  /**
    Revert video mode (fullscreenmode/resolution) back to the last user confirmed values
  **/
  @:final public function RevertVideoMode() : Void;
  
  /**
    Set scalability settings to sensible fallback values, for use when the benchmark fails or potentially causes a crash
  **/
  @:final public function SetBenchmarkFallbackValues() : Void;
  
  /**
    Sets the user's audio quality level setting
  **/
  @:final public function SetAudioQualityLevel(QualityLevel : unreal.Int32) : Void;
  
  /**
    Returns the user's audio quality level setting
  **/
  @:thisConst @:final public function GetAudioQualityLevel() : unreal.Int32;
  
  /**
    Sets the user's frame rate limit (0 will disable frame rate limiting)
  **/
  @:final public function SetFrameRateLimit(NewLimit : unreal.Float32) : Void;
  
  /**
    Gets the user's frame rate limit (0 indiciates the frame rate limit is disabled)
  **/
  @:thisConst @:final public function GetFrameRateLimit() : unreal.Float32;
  
  /**
    Changes all scalability settings at once based on a single overall quality level
    @param Value 0:low, 1:medium, 2:high, 3:epic
  **/
  @:final public function SetOverallScalabilityLevel(Value : unreal.Int32) : Void;
  
  /**
    Returns the overall scalability level (can return -1 if the settings are custom)
  **/
  @:thisConst @:final public function GetOverallScalabilityLevel() : unreal.Int32;
  
  /**
    Returns the current resolution scale and the range
  **/
  @:thisConst @:final public function GetResolutionScaleInformation(CurrentScaleNormalized : unreal.Float32, CurrentScaleValue : unreal.Int32, MinScaleValue : unreal.Int32, MaxScaleValue : unreal.Int32) : Void;
  
  /**
    Sets the current resolution scale
  **/
  @:final public function SetResolutionScaleValue(NewScaleValue : unreal.Int32) : Void;
  
  /**
    Sets the current resolution scale as a normalized 0..1 value between MinScaleValue and MaxScaleValue
  **/
  @:final public function SetResolutionScaleNormalized(NewScaleNormalized : unreal.Float32) : Void;
  
  /**
    Sets the view distance quality (0..3, higher is better)
  **/
  @:final public function SetViewDistanceQuality(Value : unreal.Int32) : Void;
  
  /**
    Returns the view distance quality (0..3, higher is better)
  **/
  @:thisConst @:final public function GetViewDistanceQuality() : unreal.Int32;
  
  /**
    Sets the shadow quality (0..3, higher is better)
  **/
  @:final public function SetShadowQuality(Value : unreal.Int32) : Void;
  
  /**
    Returns the shadow quality (0..3, higher is better)
  **/
  @:thisConst @:final public function GetShadowQuality() : unreal.Int32;
  
  /**
    Sets the anti-aliasing quality (0..3, higher is better)
  **/
  @:final public function SetAntiAliasingQuality(Value : unreal.Int32) : Void;
  
  /**
    Returns the anti-aliasing quality (0..3, higher is better)
  **/
  @:thisConst @:final public function GetAntiAliasingQuality() : unreal.Int32;
  
  /**
    Sets the texture quality (0..3, higher is better)
  **/
  @:final public function SetTextureQuality(Value : unreal.Int32) : Void;
  
  /**
    Returns the texture quality (0..3, higher is better)
  **/
  @:thisConst @:final public function GetTextureQuality() : unreal.Int32;
  
  /**
    Sets the visual effects quality (0..3, higher is better)
  **/
  @:final public function SetVisualEffectQuality(Value : unreal.Int32) : Void;
  
  /**
    Returns the visual effects quality (0..3, higher is better)
  **/
  @:thisConst @:final public function GetVisualEffectQuality() : unreal.Int32;
  
  /**
    Sets the post-processing quality (0..3, higher is better)
  **/
  @:final public function SetPostProcessingQuality(Value : unreal.Int32) : Void;
  
  /**
    Returns the post-processing quality (0..3, higher is better)
  **/
  @:thisConst @:final public function GetPostProcessingQuality() : unreal.Int32;
  
  /**
    Checks if any user settings is different from current
  **/
  @:thisConst public function IsDirty() : Bool;
  
  /**
    Validates and resets bad user settings to default. Deletes stale user settings file if necessary.
  **/
  public function ValidateSettings() : Void;
  
  /**
    Loads the user settings from persistent storage
  **/
  public function LoadSettings(bForceReload : Bool) : Void;
  
  /**
    Save the user settings to persistent storage (automatically happens as part of ApplySettings)
  **/
  public function SaveSettings() : Void;
  
  /**
    This function resets all settings to the current system settings
  **/
  public function ResetToCurrentSettings() : Void;
  public function SetToDefaults() : Void;
  
  /**
    @return The default resolution when no resolution is set
  **/
  static public function GetDefaultResolution() : unreal.FIntPoint;
  
  /**
    @return The default window position when no position is set
  **/
  static public function GetDefaultWindowPosition() : unreal.FIntPoint;
  
  /**
    @return The default window mode when no mode is set
  **/
  static public function GetDefaultWindowMode() : unreal.EWindowMode;
  
  /**
    Returns the game local machine settings (resolution, windowing mode, scalability settings, etc...)
  **/
  static public function GetGameUserSettings() : unreal.UGameUserSettings;
  
  /**
    Frame rate cap
  **/
  private var FrameRateLimit : unreal.Float32;
  private var AudioQualityLevel : unreal.Int32;
  
  /**
    All settings will be wiped and set to default if the serialized version differs from UE_GAMEUSERSETTINGS_VERSION.
  **/
  private var Version : unreal.FakeUInt32;
  
  /**
    Last user confirmed fullscreen mode setting.
  **/
  private var LastConfirmedFullscreenMode : unreal.Int32;
  
  /**
    Game window fullscreen mode
         0 = Fullscreen
         1 = Windowed fullscreen
         2 = Windowed
         3 = WindowedMirror
  **/
  private var FullscreenMode : unreal.Int32;
  
  /**
    Window PosY
  **/
  private var WindowPosY : unreal.Int32;
  
  /**
    Window PosX
  **/
  private var WindowPosX : unreal.Int32;
  
  /**
    Game screen resolution height, in pixels.
  **/
  private var LastUserConfirmedResolutionSizeY : unreal.FakeUInt32;
  
  /**
    Game screen resolution width, in pixels.
  **/
  private var LastUserConfirmedResolutionSizeX : unreal.FakeUInt32;
  
  /**
    Game screen resolution height, in pixels.
  **/
  private var ResolutionSizeY : unreal.FakeUInt32;
  
  /**
    Game screen resolution width, in pixels.
  **/
  private var ResolutionSizeX : unreal.FakeUInt32;
  
  /**
    Whether to use VSync or not. (public to allow UI to connect to it)
  **/
  public var bUseVSync : Bool;
  
}
