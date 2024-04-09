// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameNew _$GameNewFromJson(Map<String, dynamic> json) => GameNew(
      id: json['id'] as String?,
      date: json['date'] as String?,
      statusEstimateGame: json['statusEstimateGame'] as String?,
      isCompletedEstimating: json['isCompletedEstimating'] as bool?,
      opponentGroup: json['opponentGroup'] as String?,
      playerGroup: json['playerGroup'] as String?,
      playerGroupScore: json['playerGroupScore'] as int?,
      opponentGroupScore: json['opponentGroupScore'] as int?,
    );

Map<String, dynamic> _$GameNewToJson(GameNew instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'statusEstimateGame': instance.statusEstimateGame,
      'isCompletedEstimating': instance.isCompletedEstimating,
      'opponentGroup': instance.opponentGroup,
      'playerGroup': instance.playerGroup,
      'playerGroupScore': instance.playerGroupScore,
      'opponentGroupScore': instance.opponentGroupScore,
    };
