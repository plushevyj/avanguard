// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_and_top5.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberAndTop5 _$NumberAndTop5FromJson(Map<String, dynamic> json) =>
    NumberAndTop5(
      value: json['value'] as int,
      topFive: json['topFive'] as bool?,
      topFiveBackwards: json['topFiveBackwards'] as bool?,
    );

Map<String, dynamic> _$NumberAndTop5ToJson(NumberAndTop5 instance) =>
    <String, dynamic>{
      'value': instance.value,
      'topFive': instance.topFive,
      'topFiveBackwards': instance.topFiveBackwards,
    };
