// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TournamentImpl _$$TournamentImplFromJson(Map<String, dynamic> json) =>
    _$TournamentImpl(
      teamMKCId: json['teamMKCId'] as int,
      tournamentName: json['tournamentName'] as String,
      teamName: json['teamName'] as String,
      rank: json['rank'] as int,
      points: json['points'] as int,
      againstTopThree: json['againstTopThree'] as int,
      potentialPoints: json['potentialPoints'] as int,
      games: (json['games'] as List<dynamic>?)
              ?.map((e) => Game.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      groupName: json['groupName'] as String,
      isFinal: json['isFinal'] as bool,
      season: json['season'] as String,
    );

Map<String, dynamic> _$$TournamentImplToJson(_$TournamentImpl instance) =>
    <String, dynamic>{
      'teamMKCId': instance.teamMKCId,
      'tournamentName': instance.tournamentName,
      'teamName': instance.teamName,
      'rank': instance.rank,
      'points': instance.points,
      'againstTopThree': instance.againstTopThree,
      'potentialPoints': instance.potentialPoints,
      'games': instance.games,
      'groupName': instance.groupName,
      'isFinal': instance.isFinal,
      'season': instance.season,
    };

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      date: Time.stringToDate(json['date'] as String),
      opponent: json['opponent'] as String,
      homeScore: json['homeScore'] as int,
      awayScore: json['awayScore'] as int,
      resultDiagram: json['resultDiagram'] as String,
      statisticId: json['statisticId'] as String?,
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'date': Time.dateToString(instance.date),
      'opponent': instance.opponent,
      'homeScore': instance.homeScore,
      'awayScore': instance.awayScore,
      'resultDiagram': instance.resultDiagram,
      'statisticId': instance.statisticId,
    };
