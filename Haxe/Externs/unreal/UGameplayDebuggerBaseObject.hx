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

@:glueCppIncludes("Debug/GameplayDebuggerBaseObject.h")
@:uextern extern class UGameplayDebuggerBaseObject extends unreal.UGameplayDebuggerHelper {
  
  /**
    End UObject interface
  **/
  public function CollectDataToReplicateOnServer(MyPC : unreal.APlayerController, SelectedActor : unreal.AActor) : Void;
  private var ReplicatedBlob : unreal.FGameplayDebuggerReplicatedBlob;
  private var GenericShapeElements : unreal.TArray<unreal.FGameplayDebuggerShapeElement>;
  private function ServerRequestPacket(Offset : unreal.Int32) : Void;
  private function OnRep_ReplicatedBlob() : Void;
  private function OnRep_GenericShapeElements() : Void;
  
}
