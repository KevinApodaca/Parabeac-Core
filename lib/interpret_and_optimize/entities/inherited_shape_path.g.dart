// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inherited_shape_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InheritedShapePath _$InheritedShapePathFromJson(Map<String, dynamic> json) {
  return InheritedShapePath(
    SketchNode.fromJson(json['originalRef'] as Map<String, dynamic>),
  )
    ..subsemantic = json['subsemantic'] as String
    ..topLeftCorner =
        Point.fromJson(json['topLeftCorner'] as Map<String, dynamic>)
    ..bottomRightCorner =
        Point.fromJson(json['bottomRightCorner'] as Map<String, dynamic>)
    ..borderInfo = json['borderInfo'] as Map<String, dynamic>
    ..alignment = json['alignment'] as Map<String, dynamic>
    ..child = json['child']
    ..color = json['color'] as String
    ..UUID = json['UUID'] as String
    ..name = json['name'] as String
    ..referenceImage = json['referenceImage'] as String
    ..size = json['size'] as Map<String, dynamic>
    ..widgetType = json['widgetType'] as String;
}

Map<String, dynamic> _$InheritedShapePathToJson(InheritedShapePath instance) =>
    <String, dynamic>{
      'subsemantic': instance.subsemantic,
      'topLeftCorner': instance.topLeftCorner,
      'bottomRightCorner': instance.bottomRightCorner,
      'borderInfo': instance.borderInfo,
      'alignment': instance.alignment,
      'child': instance.child,
      'color': instance.color,
      'originalRef': instance.originalRef,
      'UUID': instance.UUID,
      'name': instance.name,
      'referenceImage': instance.referenceImage,
      'size': instance.size,
      'widgetType': instance.widgetType,
    };
