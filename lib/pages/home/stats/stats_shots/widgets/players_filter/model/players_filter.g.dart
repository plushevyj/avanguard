// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'players_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayersFilter _$PlayersFilterFromJson(Map<String, dynamic> json) =>
    PlayersFilter(
      players: (json['players'] as List<dynamic>)
          .map((e) => FilterPlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
      weAtHome: json['weAtHome'] as bool,
      winByOT: json['winByOT'] as bool,
      winByBullitts: json['winByBuls'] as bool,
    );

Map<String, dynamic> _$PlayersFilterToJson(PlayersFilter instance) =>
    <String, dynamic>{
      'players': instance.players,
      'weAtHome': instance.weAtHome,
      'winByOT': instance.winByOT,
      'winByBuls': instance.winByBullitts,
    };
