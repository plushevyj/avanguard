// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faceoffs_players.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaceoffsPlayersImpl _$$FaceoffsPlayersImplFromJson(
        Map<String, dynamic> json) =>
    _$FaceoffsPlayersImpl(
      players: (json['players'] as List<dynamic>)
          .map((e) => FaceoffsPlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FaceoffsPlayersImplToJson(
        _$FaceoffsPlayersImpl instance) =>
    <String, dynamic>{
      'players': instance.players,
    };
