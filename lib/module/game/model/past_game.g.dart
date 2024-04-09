// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'past_game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PastGameImpl _$$PastGameImplFromJson(Map<String, dynamic> json) =>
    _$PastGameImpl(
      id: json['id'] as String,
      date: Time.stampToDate(json['date'] as int),
      groupId: json['groupId'] as String,
      awayTeamName: json['awayTeamName'] as String,
      homeTeamName: json['homeTeamName'] as String,
      gameType: json['gameType'] as String,
      statisticsIsReady: json['statisticsIsReady'] as bool?,
      statisticId: json['statisticId'] as String?,
      score: json['score'] as String?,
      streamingURL: json['streamingURL'] as String?,
      gameResult: json['gameResult'] as String?,
    );

Map<String, dynamic> _$$PastGameImplToJson(_$PastGameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': Time.dateToStamp(instance.date),
      'groupId': instance.groupId,
      'awayTeamName': instance.awayTeamName,
      'homeTeamName': instance.homeTeamName,
      'gameType': instance.gameType,
      'statisticsIsReady': instance.statisticsIsReady,
      'statisticId': instance.statisticId,
      'score': instance.score,
      'streamingURL': instance.streamingURL,
      'gameResult': instance.gameResult,
    };
