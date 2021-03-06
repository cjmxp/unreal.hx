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

@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/BehaviorTree.h")
@:uextern extern class UBehaviorTree extends unreal.UObject {
  
  /**
    logic operators for root level decorators, used by subtrees
  **/
  public var RootDecoratorOps : unreal.TArray<unreal.aimodule.FBTDecoratorLogic>;
  
  /**
    root level decorators, used by subtrees
  **/
  public var RootDecorators : unreal.TArray<unreal.aimodule.UBTDecorator>;
  
  /**
    blackboard asset for this tree
  **/
  public var BlackboardAsset : unreal.aimodule.UBlackboardData;
  #if WITH_EDITORONLY_DATA
  
  /**
    Info about the graphs we last edited
  **/
  public var LastEditedDocuments : unreal.TArray<unreal.FEditedDocumentInfo>;
  
  /**
    Graph for Behavior Tree
  **/
  public var BTGraph : unreal.UEdGraph;
  #end // WITH_EDITORONLY_DATA
  
  /**
    root node of loaded tree
  **/
  public var RootNode : unreal.aimodule.UBTCompositeNode;
  
}
