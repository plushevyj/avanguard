// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_matches_info_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMatchesInfoResponseDtoImpl _$$GetMatchesInfoResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMatchesInfoResponseDtoImpl(
      periodScores: (json['halfsScores'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      teamNames:
          (json['teamNames'] as List<dynamic>).map((e) => e as String).toList(),
      score: Score.fromJson(json['score'] as Map<String, dynamic>),
      metrics: (json['metrics'] as List<dynamic>)
          .map((e) => PrimaryMetric.fromJson(e as Map<String, dynamic>))
          .toList(),
      winByOT: json['winByOT'] as bool,
      homeTeamLogo: json['homeTeamLogo'] as String,
      awayTeamLogo: json['awayTeamLogo'] as String,
    );

Map<String, dynamic> _$$GetMatchesInfoResponseDtoImplToJson(
        _$GetMatchesInfoResponseDtoImpl instance) =>
    <String, dynamic>{
      'halfsScores': instance.periodScores,
      'teamNames': instance.teamNames,
      'score': instance.score,
      'metrics': instance.metrics,
      'winByOT': instance.winByOT,
      'homeTeamLogo': instance.homeTeamLogo,
      'awayTeamLogo': instance.awayTeamLogo,
    };
