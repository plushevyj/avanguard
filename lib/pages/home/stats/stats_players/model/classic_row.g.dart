// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassicRow _$ClassicRowFromJson(Map<String, dynamic> json) => ClassicRow(
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      goals: NumberAndTop5.fromJson(json['goals'] as Map<String, dynamic>),
      assists: NumberAndTop5.fromJson(json['assists'] as Map<String, dynamic>),
      blockedShots:
          NumberAndTop5.fromJson(json['blockedShots'] as Map<String, dynamic>),
      plusMinus: json['plusMinus'] == null
          ? null
          : NumberAndPercent.fromJson(
              json['plusMinus'] as Map<String, dynamic>),
      plus: json['plus'] as int?,
      minus: json['minus'] as int?,
      score: json['score'] == null
          ? null
          : NumberAndTop5.fromJson(json['score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClassicRowToJson(ClassicRow instance) =>
    <String, dynamic>{
      'student': instance.student,
      'goals': instance.goals,
      'assists': instance.assists,
      'blockedShots': instance.blockedShots,
      'plusMinus': instance.plusMinus,
      'score': instance.score,
      'plus': instance.plus,
      'minus': instance.minus,
    };
