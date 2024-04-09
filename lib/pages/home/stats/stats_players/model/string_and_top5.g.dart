// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_and_top5.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StringAndTop5 _$StringAndTop5FromJson(Map<String, dynamic> json) =>
    StringAndTop5(
      value: json['value'] as String,
      topFive: json['topFive'] as bool?,
      topFiveBackwards: json['topFiveBackwards'] as bool?,
    );

Map<String, dynamic> _$StringAndTop5ToJson(StringAndTop5 instance) =>
    <String, dynamic>{
      'value': instance.value,
      'topFive': instance.topFive,
      'topFiveBackwards': instance.topFiveBackwards,
    };
