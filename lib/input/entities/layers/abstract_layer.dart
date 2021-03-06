import 'package:json_annotation/json_annotation.dart';
import 'package:parabeac_core/input/entities/abstract_sketch_node_factory.dart';
import 'package:parabeac_core/input/entities/objects/frame.dart';
import 'package:parabeac_core/input/entities/style/style.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/subclasses/pb_intermediate_node.dart';
import 'package:parabeac_core/interpret_and_optimize/helpers/pb_context.dart';

@JsonSerializable(nullable: false)
// title: Abstract Layer
// description: Abstract base schema for all layers
// type: object
abstract class SketchNode {
  final String do_objectID;
  final dynamic booleanOperation;
  final dynamic exportOptions;

  ///`frame` is not final because its going to change, just because some node contain an offset.
  Frame frame;
  final dynamic flow;
  final bool isFixedToViewport;
  final bool isFlippedHorizontal;
  final bool isFlippedVertical;
  final bool isLocked;
  final bool isVisible;
  final dynamic layerListExpandedType;
  String name;
  final bool nameIsFixed;
  final dynamic resizingConstraint;
  final dynamic resizingType;
  final int rotation;
  final dynamic sharedStyleID;
  final bool shouldBreakMaskChain;
  final bool hasClippingMask;
  final int clippingMaskMode;
  final dynamic userInfo;
  final Style style;
  final bool maintainScrollPosition;

  SketchNode(
      this.do_objectID,
      this.booleanOperation,
      this.exportOptions,
      this.frame,
      this.flow,
      this.isFixedToViewport,
      this.isFlippedHorizontal,
      this.isFlippedVertical,
      this.isLocked,
      this.isVisible,
      this.layerListExpandedType,
      this.name,
      this.nameIsFixed,
      this.resizingConstraint,
      this.resizingType,
      this.rotation,
      this.sharedStyleID,
      this.shouldBreakMaskChain,
      this.hasClippingMask,
      this.clippingMaskMode,
      this.userInfo,
      this.style,
      this.maintainScrollPosition);

  Map<String, dynamic> toJson();
  factory SketchNode.fromJson(Map<String, dynamic> json) =>
      AbstractSketchNodeFactory.getSketchNode(json);
  Future<PBIntermediateNode> interpretNode(PBContext currentContext);
}
