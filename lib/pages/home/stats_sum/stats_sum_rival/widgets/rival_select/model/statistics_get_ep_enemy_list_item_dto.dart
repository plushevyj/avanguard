import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_get_ep_enemy_list_item_dto.freezed.dart';

part 'statistics_get_ep_enemy_list_item_dto.g.dart';

@freezed
class StatisticsGetEPEnemyListItemDto with _$StatisticsGetEPEnemyListItemDto {
  const StatisticsGetEPEnemyListItemDto._();

  const factory StatisticsGetEPEnemyListItemDto({
    required int teamId,
    required String name,
    required int age,
    required String nextGameDate,
  }) = _StatisticsGetEPEnemyListItemDto;

  factory StatisticsGetEPEnemyListItemDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsGetEPEnemyListItemDtoFromJson(json);
}
