// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foul_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoulRow _$FoulRowFromJson(Map<String, dynamic> json) => FoulRow(
      student: Student.fromJson(json['student'] as Map<String, dynamic>),
      earnedFouls:
          NumberAndTop5.fromJson(json['earnedFouls'] as Map<String, dynamic>),
      fouls: NumberAndTop5.fromJson(json['fouls'] as Map<String, dynamic>),
      foulTime:
          StringAndTop5.fromJson(json['foulTime'] as Map<String, dynamic>),
      foulDifference: json['foulDifference'] == null
          ? null
          : NumberAndPercent.fromJson(
              json['foulDifference'] as Map<String, dynamic>),
      plusMinus: json['plusMinus'] == null
          ? null
          : NumberAndPercent.fromJson(
              json['plusMinus'] as Map<String, dynamic>),
      plus: json['plus'] as int?,
      minus: json['minus'] as int?,
    );

Map<String, dynamic> _$FoulRowToJson(FoulRow instance) => <String, dynamic>{
      'student': instance.student,
      'earnedFouls': instance.earnedFouls,
      'fouls': instance.fouls,
      'foulTime': instance.foulTime,
      'foulDifference': instance.foulDifference,
      'plusMinus': instance.plusMinus,
      'plus': instance.plus,
      'minus': instance.minus,
    };
