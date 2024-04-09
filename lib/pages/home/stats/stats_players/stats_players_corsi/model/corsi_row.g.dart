// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corsi_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CorsiRow _$CorsiRowFromJson(Map<String, dynamic> json) => CorsiRow(
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      corsiFor: json['corsiFor'] as int,
      corsiAgainst: json['corsiAgainst'] as int,
      corsiForOZ: json['corsiForOZ'] as int,
      corsiAgainstOZ: json['corsiAgainstOZ'] as int,
      corsiForPercent: json['corsiForPercent'] == null
          ? null
          : NumberAndPercent.fromJson(
              json['corsiForPercent'] as Map<String, dynamic>),
      corsiForOZPercent: json['corsiForOZPercent'] == null
          ? null
          : NumberAndPercent.fromJson(
              json['corsiForOZPercent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CorsiRowToJson(CorsiRow instance) => <String, dynamic>{
      'student': instance.student,
      'corsiFor': instance.corsiFor,
      'corsiAgainst': instance.corsiAgainst,
      'corsiForOZ': instance.corsiForOZ,
      'corsiAgainstOZ': instance.corsiAgainstOZ,
      'corsiForPercent': instance.corsiForPercent,
      'corsiForOZPercent': instance.corsiForOZPercent,
    };
