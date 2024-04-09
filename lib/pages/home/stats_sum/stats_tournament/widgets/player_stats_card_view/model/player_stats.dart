import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_stats.freezed.dart';

part 'player_stats.g.dart';

abstract class PlayerStats {
  List<StatisticsMKCPlayersTopItemDto> get asList;
}

@freezed
class StatisticsMKCTalbePagePlayersBlockWDItemDto
    with _$StatisticsMKCTalbePagePlayersBlockWDItemDto {
  const StatisticsMKCTalbePagePlayersBlockWDItemDto._();

  @Implements<PlayerStats>()
  const factory StatisticsMKCTalbePagePlayersBlockWDItemDto({
    required StatisticsMKCPlayersTopItemDto score,
    required StatisticsMKCPlayersTopItemDto goals,
    required StatisticsMKCPlayersTopItemDto assists,
    required StatisticsMKCPlayersTopItemDto plusMinus,
  }) = _StatisticsMKCTalbePagePlayersBlockWDItemDto;

  factory StatisticsMKCTalbePagePlayersBlockWDItemDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StatisticsMKCTalbePagePlayersBlockWDItemDtoFromJson(json);

  /// @override
  List<StatisticsMKCPlayersTopItemDto> get asList => [
        score,
        goals,
        assists,
        plusMinus,
      ];
}

@freezed
class StatisticsMKCPlayersTopItemDto with _$StatisticsMKCPlayersTopItemDto {
  const StatisticsMKCPlayersTopItemDto._();

  const factory StatisticsMKCPlayersTopItemDto({
    required List<StatisticsMKCPlayersStatItemDto>? topFive,
    required List<StatisticsMKCPlayersStatItemDto>? ourTopFive,
  }) = _StatisticsMKCPlayersTopItemDto;

  factory StatisticsMKCPlayersTopItemDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsMKCPlayersTopItemDtoFromJson(json);

  StatisticsMKCPlayersStatItemDto? get bestPlayer {
    return ((topFive ?? []) + (ourTopFive ?? []))
        .firstWhereOrNull((e) => e.markAsBest);
  }
}

@freezed
class StatisticsMKCPlayersStatItemDto with _$StatisticsMKCPlayersStatItemDto {
  const StatisticsMKCPlayersStatItemDto._();

  const factory StatisticsMKCPlayersStatItemDto({
    required bool? isOurPlayer,
    required num position,
    required String firstName,
    required String lastName,
    required num playerNumber,
    required String avatar,
    required bool markAsBest,
    required num value,
    required String teamLogo,
  }) = _StatisticsMKCPlayersStatItemDto;

  factory StatisticsMKCPlayersStatItemDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsMKCPlayersStatItemDtoFromJson(json);
}

@freezed
class StatisticsGetMKCTablePagePlayersBlockGoaltendersDto
    with _$StatisticsGetMKCTablePagePlayersBlockGoaltendersDto {
  const StatisticsGetMKCTablePagePlayersBlockGoaltendersDto._();

  @Implements<PlayerStats>()
  const factory StatisticsGetMKCTablePagePlayersBlockGoaltendersDto({
    required StatisticsMKCPlayersTopItemDto savePercent,
    required StatisticsMKCPlayersTopItemDto safetyFactor,
  }) = _StatisticsGetMKCTablePagePlayersBlockGoaltendersDto;

  factory StatisticsGetMKCTablePagePlayersBlockGoaltendersDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StatisticsGetMKCTablePagePlayersBlockGoaltendersDtoFromJson(json);

  /// @override
  List<StatisticsMKCPlayersTopItemDto> get asList => [
        savePercent,
        safetyFactor,
      ];
}
