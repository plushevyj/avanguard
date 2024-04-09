import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../stats/stats_players/model/number_and_percent.dart';
import '../../../../stats/stats_players/model/number_and_top5.dart';

part 'statistics_classic_tab_item_dto.freezed.dart';

part 'statistics_classic_tab_item_dto.g.dart';

@freezed
class StatisticsClassicTabItemDto with _$StatisticsClassicTabItemDto {
  const StatisticsClassicTabItemDto._();

  const factory StatisticsClassicTabItemDto({
    required StatisticsTabStudentItemDto student,
    required NumberAndTop5? score,
    required NumberAndTop5? goals,
    required NumberAndTop5? assists,
    required NumberAndPercent? plusMinus,
    required num? plus,
    required num? minus,
    required NumberAndTop5? blockedShots,
  }) = _StatisticsClassicTabItemDto;

  factory StatisticsClassicTabItemDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsClassicTabItemDtoFromJson(json);
}

@freezed
class StatisticsTabStudentItemDto with _$StatisticsTabStudentItemDto {
  const StatisticsTabStudentItemDto._();

  const factory StatisticsTabStudentItemDto({
    required String? id,
    required String firstName,
    required String lastName,
    required String? avatar,
    required String? hockeyRole,
    required int playerNumber,
    required String? teamLogo,
    required int? gamesCount,
  }) = _StatisticsTabStudentItemDto;

  factory StatisticsTabStudentItemDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsTabStudentItemDtoFromJson(json);
}
