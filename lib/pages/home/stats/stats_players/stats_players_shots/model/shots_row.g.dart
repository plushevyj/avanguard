// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shots_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShotsRow _$ShotsRowFromJson(Map<String, dynamic> json) => ShotsRow(
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      goals: NumberAndTop5.fromJson(json['goals'] as Map<String, dynamic>),
      shots: NumberAndTop5.fromJson(json['shots'] as Map<String, dynamic>),
      shotsOnGoal:
          NumberAndTop5.fromJson(json['shotsOnGoal'] as Map<String, dynamic>),
      unsuccessfulShotAttempts: NumberAndTop5.fromJson(
          json['unsuccessfulShotAttempts'] as Map<String, dynamic>),
      shotsAccuracy: json['shotsAccuracy'] == null
          ? null
          : NumberAndTop5.fromJson(
              json['shotsAccuracy'] as Map<String, dynamic>),
      shotsRealization: json['shotsRealization'] == null
          ? null
          : NumberAndTop5.fromJson(
              json['shotsRealization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShotsRowToJson(ShotsRow instance) => <String, dynamic>{
      'student': instance.student,
      'goals': instance.goals,
      'shots': instance.shots,
      'shotsOnGoal': instance.shotsOnGoal,
      'unsuccessfulShotAttempts': instance.unsuccessfulShotAttempts,
      'shotsAccuracy': instance.shotsAccuracy,
      'shotsRealization': instance.shotsRealization,
    };
