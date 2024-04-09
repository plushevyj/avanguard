// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gates_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GatesMap _$GatesMapFromJson(Map<String, dynamic> json) => GatesMap(
      topLeft: json['topLeft'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['topLeft'] as Map<String, dynamic>),
      topMid: json['topMid'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['topMid'] as Map<String, dynamic>),
      topRight: json['topRight'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['topRight'] as Map<String, dynamic>),
      midLeft: json['midLeft'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['midLeft'] as Map<String, dynamic>),
      center: json['center'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['center'] as Map<String, dynamic>),
      midRight: json['midRight'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['midRight'] as Map<String, dynamic>),
      botLeft: json['botLeft'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['botLeft'] as Map<String, dynamic>),
      botMid: json['botMid'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['botMid'] as Map<String, dynamic>),
      botRight: json['botRight'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['botRight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GatesMapToJson(GatesMap instance) => <String, dynamic>{
      'topLeft': instance.topLeft,
      'topMid': instance.topMid,
      'topRight': instance.topRight,
      'midLeft': instance.midLeft,
      'center': instance.center,
      'midRight': instance.midRight,
      'botLeft': instance.botLeft,
      'botMid': instance.botMid,
      'botRight': instance.botRight,
    };
