// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_struggle_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PowerStruggleRow _$PowerStruggleRowFromJson(Map<String, dynamic> json) =>
    PowerStruggleRow(
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      hits: NumberAndTop5.fromJson(json['hits'] as Map<String, dynamic>),
      winBattles: json['winBattles'] as int,
      allBattles: json['allBattles'] as int,
      winBattlesPercent: json['winBattlesPercent'] == null
          ? null
          : NumberAndPercent.fromJson(
              json['winBattlesPercent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PowerStruggleRowToJson(PowerStruggleRow instance) =>
    <String, dynamic>{
      'student': instance.student,
      'hits': instance.hits,
      'winBattles': instance.winBattles,
      'allBattles': instance.allBattles,
      'winBattlesPercent': instance.winBattlesPercent,
    };
