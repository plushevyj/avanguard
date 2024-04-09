import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_mkc_tournament_item_dto.freezed.dart';

part 'statistics_mkc_tournament_item_dto.g.dart';

@freezed
class StatisticsMKCTournamentItemDto with _$StatisticsMKCTournamentItemDto {
  const StatisticsMKCTournamentItemDto._();

  const factory StatisticsMKCTournamentItemDto({
    required int tournamentId,
    required String name,
    required String groupName,
    required bool isFinal,
  }) = _StatisticsMKCTournamentItemDto;

  String get view => '$name, ($groupName)'.replaceAll('&quot;', '"');

  factory StatisticsMKCTournamentItemDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsMKCTournamentItemDtoFromJson(json);
}
