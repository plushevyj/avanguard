// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_stats_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentStatsItemImpl _$$StudentStatsItemImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentStatsItemImpl(
      id: json['id'] as String,
      season: json['season'] as String,
      number: json['number'] as String,
      teamName: json['teamName'] as String,
      gamesNumber: json['gamesNumber'] as String,
      goalsNumber: json['goalsNumber'] as String,
      passesNumber: json['passesNumber'] as String,
      pointsNumber: json['pointsNumber'] as String,
      penaltiesNumber: json['penaltiesNumber'] as String,
    );

Map<String, dynamic> _$$StudentStatsItemImplToJson(
        _$StudentStatsItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'season': instance.season,
      'number': instance.number,
      'teamName': instance.teamName,
      'gamesNumber': instance.gamesNumber,
      'goalsNumber': instance.goalsNumber,
      'passesNumber': instance.passesNumber,
      'pointsNumber': instance.pointsNumber,
      'penaltiesNumber': instance.penaltiesNumber,
    };
