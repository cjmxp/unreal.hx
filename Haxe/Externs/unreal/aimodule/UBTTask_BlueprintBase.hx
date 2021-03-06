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
package unreal.aimodule;


/**
  Base class for blueprint based task nodes. Do NOT use it for creating native c++ classes!
  
  When task receives Abort event, all latent actions associated this instance are being removed.
  This prevents from resuming activity started by Execute, but does not handle external events.
  Please use them safely (unregister at abort) and call IsTaskExecuting() when in doubt.
**/
@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/Tasks/BTTask_BlueprintBase.h")
@:uextern extern class UBTTask_BlueprintBase extends unreal.aimodule.UBTTaskNode {
  
  /**
    Cached actor owner of BehaviorTreeComponent.
  **/
  private var ActorOwner : unreal.AActor;
  
  /**
    Cached AIController owner of BehaviorTreeComponent.
  **/
  private var AIOwner : unreal.aimodule.AAIController;
  
  /**
    entry point, task will stay active until FinishExecute is called.
        @Note that if both generic and AI event versions are implemented only the more
        suitable one will be called, meaning the AI version if called for AI, generic one otherwise
  **/
  private function ReceiveExecute(OwnerActor : unreal.AActor) : Void;
  
  /**
    if blueprint graph contains this event, task will stay active until FinishAbort is called
        @Note that if both generic and AI event versions are implemented only the more
        suitable one will be called, meaning the AI version if called for AI, generic one otherwise
  **/
  private function ReceiveAbort(OwnerActor : unreal.AActor) : Void;
  
  /**
    tick function
        @Note that if both generic and AI event versions are implemented only the more
        suitable one will be called, meaning the AI version if called for AI, generic one otherwise
  **/
  private function ReceiveTick(OwnerActor : unreal.AActor, DeltaSeconds : unreal.Float32) : Void;
  
  /**
    Alternative AI version of ReceiveExecute
         @see ReceiveExecute for more details
        @Note that if both generic and AI event versions are implemented only the more
        suitable one will be called, meaning the AI version if called for AI, generic one otherwise
  **/
  private function ReceiveExecuteAI(OwnerController : unreal.aimodule.AAIController, ControlledPawn : unreal.APawn) : Void;
  
  /**
    Alternative AI version of ReceiveAbort
        @see ReceiveAbort for more details
        @Note that if both generic and AI event versions are implemented only the more
        suitable one will be called, meaning the AI version if called for AI, generic one otherwise
  **/
  private function ReceiveAbortAI(OwnerController : unreal.aimodule.AAIController, ControlledPawn : unreal.APawn) : Void;
  
  /**
    Alternative AI version of tick function.
        @see ReceiveTick for more details
        @Note that if both generic and AI event versions are implemented only the more
        suitable one will be called, meaning the AI version if called for AI, generic one otherwise
  **/
  private function ReceiveTickAI(OwnerController : unreal.aimodule.AAIController, ControlledPawn : unreal.APawn, DeltaSeconds : unreal.Float32) : Void;
  
  /**
    finishes task execution with Success or Fail result
  **/
  @:final private function FinishExecute(bSuccess : Bool) : Void;
  
  /**
    aborts task execution
  **/
  @:final private function FinishAbort() : Void;
  
  /**
    task execution will be finished (with result 'Success') after receiving specified message
  **/
  @:final private function SetFinishOnMessage(MessageName : unreal.FName) : Void;
  
  /**
    task execution will be finished (with result 'Success') after receiving specified message with indicated ID
  **/
  @:final private function SetFinishOnMessageWithId(MessageName : unreal.FName, RequestID : unreal.Int32) : Void;
  
  /**
    check if task is currently being executed
  **/
  @:thisConst @:final private function IsTaskExecuting() : Bool;
  
  /**
    check if task is currently being aborted
  **/
  @:thisConst @:final private function IsTaskAborting() : Bool;
  
}
