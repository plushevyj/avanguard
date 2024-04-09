// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NextGameImpl _$$NextGameImplFromJson(Map<String, dynamic> json) =>
    _$NextGameImpl(
      id: json['id'] as String,
      date: Time.stampToDate(json['date'] as int),
      groupId: json['groupId'] as String,
      awayTeamName: json['awayTeamName'] as String,
      homeTeamName: json['homeTeamName'] as String,
      gameType: json['gameType'] as String,
    );

Map<String, dynamic> _$$NextGameImplToJson(_$NextGameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': Time.dateToStamp(instance.date),
      'groupId': instance.groupId,
      'awayTeamName': instance.awayTeamName,
      'homeTeamName': instance.homeTeamName,
      'gameType': instance.gameType,
    };
