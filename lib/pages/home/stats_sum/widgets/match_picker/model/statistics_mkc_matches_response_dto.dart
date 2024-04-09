import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/utils/time.dart';
import '../../../../../../module/game/model/game_interface.dart';

part 'statistics_mkc_matches_response_dto.freezed.dart';

part 'statistics_mkc_matches_response_dto.g.dart';

@unfreezed
class StatisticsMKCMatchesResponseDto with _$StatisticsMKCMatchesResponseDto {
  const StatisticsMKCMatchesResponseDto._();

  @Implements<GameInterface>()
  factory StatisticsMKCMatchesResponseDto({
    @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
    required DateTime date,
    required String resultIndicator,
    required List<int> score,
    required String homeTeamName,
    required String awayTeamName,
    required String statisticId,
    @Default(false) bool isActive,
  }) = _StatisticsMKCMatchesResponseDto;

  factory StatisticsMKCMatchesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsMKCMatchesResponseDtoFromJson(json);
}

extension IdsExtension on List<StatisticsMKCMatchesResponseDto> {
  List<String> get ids => map((e) => e.statisticId).toList();
}
