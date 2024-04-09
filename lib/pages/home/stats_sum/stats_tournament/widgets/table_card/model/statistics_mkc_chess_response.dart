import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_mkc_chess_response.freezed.dart';

part 'statistics_mkc_chess_response.g.dart';

@unfreezed
class StatisticsMKCChessResponse with _$StatisticsMKCChessResponse {
   factory StatisticsMKCChessResponse({
    required List<StatisticsMKCChessRowItemDto> rows,
    required List<StatisticsMKCChessColumnItemDto> columns,
  }) = _StatisticsMKCChessResponse;

  factory StatisticsMKCChessResponse.fromJson(Map<String, dynamic> json) =>
      _$StatisticsMKCChessResponseFromJson(json);
}

@unfreezed
class StatisticsMKCChessRowItemDto with _$StatisticsMKCChessRowItemDto {
   StatisticsMKCChessRowItemDto._();

   factory StatisticsMKCChessRowItemDto({
    required StatisticsMKCChessRowTeamItemDto team,
    required int puckDifference,
    required int score,
    required bool isOurTeam,
    required Map<String, String>? isNext,
    required Map<int, StatisticsMKCChessRowTeamGamesMapItemDto?> games,
  }) = _StatisticsMKCChessRowItemDto;

  String? get next => isNext?.values.firstOrNull;

  factory StatisticsMKCChessRowItemDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsMKCChessRowItemDtoFromJson(json);
}

@freezed
class StatisticsMKCChessRowTeamItemDto with _$StatisticsMKCChessRowTeamItemDto {
  const factory StatisticsMKCChessRowTeamItemDto({
    required int id,
    required String name,
    required String teamLogo,
  }) = _StatisticsMKCChessRowTeamItemDto;

  factory StatisticsMKCChessRowTeamItemDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StatisticsMKCChessRowTeamItemDtoFromJson(json);
}

@freezed
class StatisticsMKCChessRowTeamGamesMapItemDto
    with _$StatisticsMKCChessRowTeamGamesMapItemDto {
  const factory StatisticsMKCChessRowTeamGamesMapItemDto({
    required int id,
    required String name,
    required List<StatisticsMKCChessRowTeamGamesMapDataDto?>? data,
    required String underline,
  }) = _StatisticsMKCChessRowTeamGamesMapItemDto;

  factory StatisticsMKCChessRowTeamGamesMapItemDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StatisticsMKCChessRowTeamGamesMapItemDtoFromJson(json);
}

@freezed
class StatisticsMKCChessRowTeamGamesMapDataDto
    with _$StatisticsMKCChessRowTeamGamesMapDataDto {
  const StatisticsMKCChessRowTeamGamesMapDataDto._();

  const factory StatisticsMKCChessRowTeamGamesMapDataDto({
    required String type,
    required List<int> score,
    required String date,
    required bool techResult,
  }) = _StatisticsMKCChessRowTeamGamesMapDataDto;

  String get scoreView => type == 'NP' ? '-' : '${score.first}:${score.last}';

  String get tooltip {
    if (type == 'NP') return 'Не сыграна.\nДата: $date';
    return 'Счёт: $scoreView\nДата: $date';
  }

  factory StatisticsMKCChessRowTeamGamesMapDataDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StatisticsMKCChessRowTeamGamesMapDataDtoFromJson(json);
}

@unfreezed
class StatisticsMKCChessColumnItemDto with _$StatisticsMKCChessColumnItemDto {
  factory StatisticsMKCChessColumnItemDto({
    required int id,
    required String name,
  }) = _StatisticsMKCChessColumnItemDto;

  factory StatisticsMKCChessColumnItemDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsMKCChessColumnItemDtoFromJson(json);
}
