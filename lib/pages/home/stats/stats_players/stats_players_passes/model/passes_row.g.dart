// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passes_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassesRow _$PassesRowFromJson(Map<String, dynamic> json) => PassesRow(
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      accuratePasses: NumberAndTop5.fromJson(
          json['accuratePasses'] as Map<String, dynamic>),
      passesCount:
          NumberAndTop5.fromJson(json['passesCount'] as Map<String, dynamic>),
      dangerousPassesTaken: NumberAndTop5.fromJson(
          json['dangerousPassesTaken'] as Map<String, dynamic>),
      accurateOZPasses: NumberAndTop5.fromJson(
          json['accurateOZPasses'] as Map<String, dynamic>),
      OZPassesCount:
          NumberAndTop5.fromJson(json['OZPassesCount'] as Map<String, dynamic>),
      dangerousOZPassesTaken: NumberAndTop5.fromJson(
          json['dangerousOZPassesTaken'] as Map<String, dynamic>),
      accuratePassesPercent: json['accuratePassesPercent'] == null
          ? null
          : NumberAndPercent.fromJson(
              json['accuratePassesPercent'] as Map<String, dynamic>),
      accurateOZPassesPercent: json['accurateOZPassesPercent'] == null
          ? null
          : NumberAndPercent.fromJson(
              json['accurateOZPassesPercent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PassesRowToJson(PassesRow instance) => <String, dynamic>{
      'student': instance.student,
      'accuratePasses': instance.accuratePasses,
      'passesCount': instance.passesCount,
      'dangerousPassesTaken': instance.dangerousPassesTaken,
      'accurateOZPasses': instance.accurateOZPasses,
      'OZPassesCount': instance.OZPassesCount,
      'dangerousOZPassesTaken': instance.dangerousOZPassesTaken,
      'accuratePassesPercent': instance.accuratePassesPercent,
      'accurateOZPassesPercent': instance.accurateOZPassesPercent,
    };
