// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_mkc_chess_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsMKCChessResponseImpl _$$StatisticsMKCChessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticsMKCChessResponseImpl(
      rows: (json['rows'] as List<dynamic>)
          .map((e) =>
              StatisticsMKCChessRowItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      columns: (json['columns'] as List<dynamic>)
          .map((e) => StatisticsMKCChessColumnItemDto.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StatisticsMKCChessResponseImplToJson(
        _$StatisticsMKCChessResponseImpl instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'columns': instance.columns,
    };

_$StatisticsMKCChessRowItemDtoImpl _$$StatisticsMKCChessRowItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticsMKCChessRowItemDtoImpl(
      team: StatisticsMKCChessRowTeamItemDto.fromJson(
          json['team'] as Map<String, dynamic>),
      puckDifference: json['puckDifference'] as int,
      score: json['score'] as int,
      isOurTeam: json['isOurTeam'] as bool,
      isNext: (json['isNext'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      games: (json['games'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            int.parse(k),
            e == null
                ? null
                : StatisticsMKCChessRowTeamGamesMapItemDto.fromJson(
                    e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$StatisticsMKCChessRowItemDtoImplToJson(
        _$StatisticsMKCChessRowItemDtoImpl instance) =>
    <String, dynamic>{
      'team': instance.team,
      'puckDifference': instance.puckDifference,
      'score': instance.score,
      'isOurTeam': instance.isOurTeam,
      'isNext': instance.isNext,
      'games': instance.games.map((k, e) => MapEntry(k.toString(), e)),
    };

_$StatisticsMKCChessRowTeamItemDtoImpl
    _$$StatisticsMKCChessRowTeamItemDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$StatisticsMKCChessRowTeamItemDtoImpl(
          id: json['id'] as int,
          name: json['name'] as String,
          teamLogo: json['teamLogo'] as String,
        );

Map<String, dynamic> _$$StatisticsMKCChessRowTeamItemDtoImplToJson(
        _$StatisticsMKCChessRowTeamItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'teamLogo': instance.teamLogo,
    };

_$StatisticsMKCChessRowTeamGamesMapItemDtoImpl
    _$$StatisticsMKCChessRowTeamGamesMapItemDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl(
          id: json['id'] as int,
          name: json['name'] as String,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : StatisticsMKCChessRowTeamGamesMapDataDto.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          underline: json['underline'] as String,
        );

Map<String, dynamic> _$$StatisticsMKCChessRowTeamGamesMapItemDtoImplToJson(
        _$StatisticsMKCChessRowTeamGamesMapItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'data': instance.data,
      'underline': instance.underline,
    };

_$StatisticsMKCChessRowTeamGamesMapDataDtoImpl
    _$$StatisticsMKCChessRowTeamGamesMapDataDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl(
          type: json['type'] as String,
          score: (json['score'] as List<dynamic>).map((e) => e as int).toList(),
          date: json['date'] as String,
          techResult: json['techResult'] as bool,
        );

Map<String, dynamic> _$$StatisticsMKCChessRowTeamGamesMapDataDtoImplToJson(
        _$StatisticsMKCChessRowTeamGamesMapDataDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'score': instance.score,
      'date': instance.date,
      'techResult': instance.techResult,
    };

_$StatisticsMKCChessColumnItemDtoImpl
    _$$StatisticsMKCChessColumnItemDtoImplFromJson(Map<String, dynamic> json) =>
        _$StatisticsMKCChessColumnItemDtoImpl(
          id: json['id'] as int,
          name: json['name'] as String,
        );

Map<String, dynamic> _$$StatisticsMKCChessColumnItemDtoImplToJson(
        _$StatisticsMKCChessColumnItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
