// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeRow _$TimeRowFromJson(Map<String, dynamic> json) => TimeRow(
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      timeOnIce: StringAndTop5.fromJson(json['toi'] as Map<String, dynamic>),
      shifts: json['shifts'] as int,
      replayedShifts: NumberAndTop5.fromJson(
          json['replayedShifts'] as Map<String, dynamic>),
      averageShiftDuration: json['averageShiftDuration'] == null
          ? null
          : StringAndTop5.fromJson(
              json['averageShiftDuration'] as Map<String, dynamic>),
      replayedShiftsPercent: json['replayedShiftsPercent'] == null
          ? null
          : NumberAndTop5.fromJson(
              json['replayedShiftsPercent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TimeRowToJson(TimeRow instance) => <String, dynamic>{
      'student': instance.student,
      'toi': instance.timeOnIce,
      'shifts': instance.shifts,
      'replayedShifts': instance.replayedShifts,
      'averageShiftDuration': instance.averageShiftDuration,
      'replayedShiftsPercent': instance.replayedShiftsPercent,
    };
