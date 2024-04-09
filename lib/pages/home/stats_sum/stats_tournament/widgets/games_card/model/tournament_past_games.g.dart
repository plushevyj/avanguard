// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_past_games.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MKCTablePagePastGamesResponseDtoImpl
    _$$MKCTablePagePastGamesResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$MKCTablePagePastGamesResponseDtoImpl(
          games: (json['games'] as List<dynamic>)
              .map((e) => MKCTablePagePastGameItemDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          pages: json['pages'] as int,
        );

Map<String, dynamic> _$$MKCTablePagePastGamesResponseDtoImplToJson(
        _$MKCTablePagePastGamesResponseDtoImpl instance) =>
    <String, dynamic>{
      'games': instance.games,
      'pages': instance.pages,
    };

_$MKCTablePagePastGameItemDtoImpl _$$MKCTablePagePastGameItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MKCTablePagePastGameItemDtoImpl(
      homeTeamName: json['homeTeamName'] as String,
      awayTeamName: json['awayTeamName'] as String,
      homeTeamLogo: json['homeTeamLogo'] as String,
      awayTeamLogo: json['awayTeamLogo'] as String,
      homeScore: json['homeScore'] as int,
      awayScore: json['awayScore'] as int,
      halfsScores: (json['halfsScores'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
          .toList(),
      goals: MKCTablePagePastGamesTeamGoalsDto.fromJson(
          json['goals'] as Map<String, dynamic>),
      isOT: json['isOT'] as bool,
      isBuls: json['isBuls'] as bool,
      translationLink: json['translationLink'] as String?,
      statisticId: json['statisticId'] as String?,
      techResult: json['techResult'] as bool,
    );

Map<String, dynamic> _$$MKCTablePagePastGameItemDtoImplToJson(
        _$MKCTablePagePastGameItemDtoImpl instance) =>
    <String, dynamic>{
      'homeTeamName': instance.homeTeamName,
      'awayTeamName': instance.awayTeamName,
      'homeTeamLogo': instance.homeTeamLogo,
      'awayTeamLogo': instance.awayTeamLogo,
      'homeScore': instance.homeScore,
      'awayScore': instance.awayScore,
      'halfsScores': instance.halfsScores,
      'goals': instance.goals,
      'isOT': instance.isOT,
      'isBuls': instance.isBuls,
      'translationLink': instance.translationLink,
      'statisticId': instance.statisticId,
      'techResult': instance.techResult,
    };

_$MKCTablePagePastGamesTeamGoalsDtoImpl
    _$$MKCTablePagePastGamesTeamGoalsDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$MKCTablePagePastGamesTeamGoalsDtoImpl(
          homeTeam: MKCTablePagePastGamesGamesHalfGoalsDto.fromJson(
              json['homeTeam'] as Map<String, dynamic>),
          awayTeam: MKCTablePagePastGamesGamesHalfGoalsDto.fromJson(
              json['awayTeam'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$MKCTablePagePastGamesTeamGoalsDtoImplToJson(
        _$MKCTablePagePastGamesTeamGoalsDtoImpl instance) =>
    <String, dynamic>{
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
    };

_$MKCTablePagePastGamesGamesHalfGoalsDtoImpl
    _$$MKCTablePagePastGamesGamesHalfGoalsDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl(
          firstHalf: (json['firstHalf'] as List<dynamic>)
              .map((e) =>
                  PastGameGoalItemDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          secondHalf: (json['secondHalf'] as List<dynamic>)
              .map((e) =>
                  PastGameGoalItemDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          thirdHalf: (json['thirdHalf'] as List<dynamic>)
              .map((e) =>
                  PastGameGoalItemDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          overtime: (json['overtime'] as List<dynamic>)
              .map((e) =>
                  PastGameGoalItemDto.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$MKCTablePagePastGamesGamesHalfGoalsDtoImplToJson(
        _$MKCTablePagePastGamesGamesHalfGoalsDtoImpl instance) =>
    <String, dynamic>{
      'firstHalf': instance.firstHalf,
      'secondHalf': instance.secondHalf,
      'thirdHalf': instance.thirdHalf,
      'overtime': instance.overtime,
    };

_$PastGameGoalItemDtoImpl _$$PastGameGoalItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PastGameGoalItemDtoImpl(
      playerFirstName: json['playerFirstName'] as String,
      playerLastName: json['playerLastName'] as String,
      playerNumber: json['playerNumber'] as int,
      time: json['time'] as String,
    );

Map<String, dynamic> _$$PastGameGoalItemDtoImplToJson(
        _$PastGameGoalItemDtoImpl instance) =>
    <String, dynamic>{
      'playerFirstName': instance.playerFirstName,
      'playerLastName': instance.playerLastName,
      'playerNumber': instance.playerNumber,
      'time': instance.time,
    };
