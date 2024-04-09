// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shot _$ShotFromJson(Map<String, dynamic> json) => Shot(
      name: json['name'] as String,
      value: json['value'] as int,
      percentValue: (json['percentValue'] as num).toDouble(),
    );

Map<String, dynamic> _$ShotToJson(Shot instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'percentValue': instance.percentValue,
    };
