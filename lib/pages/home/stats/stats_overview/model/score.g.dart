// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Score _$ScoreFromJson(Map<String, dynamic> json) => Score(
      data: ScoreData.fromJson(json['data'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$ScoreToJson(Score instance) => <String, dynamic>{
      'data': instance.data,
      'name': instance.name,
    };

ScoreData _$ScoreDataFromJson(Map<String, dynamic> json) => ScoreData(
      home: json['home'] as int,
      away: json['away'] as int,
    );

Map<String, dynamic> _$ScoreDataToJson(ScoreData instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };
