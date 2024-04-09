import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../stats/stats_overview/model/primary_metric.dart';
import '../../../stats/stats_overview/model/score.dart';
import '../../../stats/stats_overview/model/stats_overview.dart';

part 'get_matches_info_response_dto.freezed.dart';

part 'get_matches_info_response_dto.g.dart';

@freezed
class GetMatchesInfoResponseDto with _$GetMatchesInfoResponseDto {
  const GetMatchesInfoResponseDto._();

  @Implements<StatsOverview>()
  const factory GetMatchesInfoResponseDto({
    @JsonKey(name: 'halfsScores') required List<String> periodScores,
    required List<String> teamNames,
    required Score score,
    required List<PrimaryMetric> metrics,
    required bool winByOT,
    required String homeTeamLogo,
    required String awayTeamLogo,
  }) = _GetMatchesInfoResponseDto;

  factory GetMatchesInfoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetMatchesInfoResponseDtoFromJson(json);
}
