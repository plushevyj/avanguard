// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_mkc_table_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsMKCTableItemDtoImpl _$$StatisticsMKCTableItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticsMKCTableItemDtoImpl(
      isNext: (json['isNext'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      isOurTeam: json['isOurTeam'] as bool,
      isNextOpponent: json['isNextOpponent'] as bool?,
      teamName: json['teamName'] as String,
      teamLogo: json['teamLogo'] as String,
      games: json['games'] as int,
      wins: json['wins'] as int,
      winsOT: json['winsOT'] as int,
      loses: json['loses'] as int,
      losesOT: json['losesOT'] as int,
      score: json['score'] as int,
      puckDiff: json['puckDiff'] as int,
      goals: json['goals'] as int,
      puckPasses: json['puckPasses'] as int,
      indicators: (json['indicators'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$StatisticsMKCTableItemDtoImplToJson(
        _$StatisticsMKCTableItemDtoImpl instance) =>
    <String, dynamic>{
      'isNext': instance.isNext,
      'isOurTeam': instance.isOurTeam,
      'isNextOpponent': instance.isNextOpponent,
      'teamName': instance.teamName,
      'teamLogo': instance.teamLogo,
      'games': instance.games,
      'wins': instance.wins,
      'winsOT': instance.winsOT,
      'loses': instance.loses,
      'losesOT': instance.losesOT,
      'score': instance.score,
      'puckDiff': instance.puckDiff,
      'goals': instance.goals,
      'puckPasses': instance.puckPasses,
      'indicators': instance.indicators,
    };
