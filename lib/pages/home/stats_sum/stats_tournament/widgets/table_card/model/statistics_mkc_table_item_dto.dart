import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_mkc_table_item_dto.freezed.dart';

part 'statistics_mkc_table_item_dto.g.dart';

@freezed
class StatisticsMKCTableItemDto with _$StatisticsMKCTableItemDto {
  const StatisticsMKCTableItemDto._();

  const factory StatisticsMKCTableItemDto({
    required Map<String, String>? isNext,
    required bool isOurTeam,
    required bool? isNextOpponent,
    required String teamName,
    required String teamLogo,
    required int games,
    required int wins,
    required int winsOT,
    required int loses,
    required int losesOT,
    required int score,
    required int puckDiff,
    required int goals,
    required int puckPasses,
    @JsonKey(defaultValue: [])
    required List<String> indicators,
  }) = _StatisticsMKCTableItemDto;

  factory StatisticsMKCTableItemDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsMKCTableItemDtoFromJson(json);

  String? get nextRivalDate => isNext?.values.firstOrNull;
}
