// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_estimate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameEstimateImpl _$$GameEstimateImplFromJson(Map<String, dynamic> json) =>
    _$GameEstimateImpl(
      lesson: Lesson.fromJson(json['lesson'] as Map<String, dynamic>),
      parameters: (json['parameters'] as List<dynamic>)
          .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GameEstimateImplToJson(_$GameEstimateImpl instance) =>
    <String, dynamic>{
      'lesson': instance.lesson,
      'parameters': instance.parameters,
    };

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      fullName: json['fullName'] as String,
      opponent: json['opponent'] as String,
      type: json['type'] as String,
      startTimestamp: json['startTimestamp'] as int,
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fullName': instance.fullName,
      'opponent': instance.opponent,
      'type': instance.type,
      'startTimestamp': instance.startTimestamp,
    };

_$ParameterImpl _$$ParameterImplFromJson(Map<String, dynamic> json) =>
    _$ParameterImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      value: json['value'] as int?,
    );

Map<String, dynamic> _$$ParameterImplToJson(_$ParameterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
    };
