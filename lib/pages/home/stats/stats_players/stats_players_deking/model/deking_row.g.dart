// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deking_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DekingRow _$DekingRowFromJson(Map<String, dynamic> json) => DekingRow(
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      dekings: NumberAndTop5.fromJson(json['dekings'] as Map<String, dynamic>),
      playerDekingAttempts: NumberAndTop5.fromJson(
          json['playerDekingAttempts'] as Map<String, dynamic>),
      unsuccessfulDekings: NumberAndTop5.fromJson(
          json['unsuccessfulDekings'] as Map<String, dynamic>),
      dekingOnPlayerAttempts: json['dekingOnPlayerAttempts'] as int,
      successfulDekings: json['successfulDekings'] == null
          ? null
          : NumberAndTop5.fromJson(
              json['successfulDekings'] as Map<String, dynamic>),
      savedDekings: json['savedDekings'] == null
          ? null
          : NumberAndTop5.fromJson(
              json['savedDekings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DekingRowToJson(DekingRow instance) => <String, dynamic>{
      'student': instance.student,
      'dekings': instance.dekings,
      'playerDekingAttempts': instance.playerDekingAttempts,
      'unsuccessfulDekings': instance.unsuccessfulDekings,
      'dekingOnPlayerAttempts': instance.dekingOnPlayerAttempts,
      'successfulDekings': instance.successfulDekings,
      'savedDekings': instance.savedDekings,
    };
