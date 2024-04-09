import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/name.dart';
import 'primary_metric.dart';
import 'score.dart';

part 'stats_overview.freezed.dart';

part 'stats_overview.g.dart';

abstract class StatsOverview {
  Score get score;
}

@freezed
class StatisticsGetMatchIndexPageInfoResponseDto
    with _$StatisticsGetMatchIndexPageInfoResponseDto {
  const StatisticsGetMatchIndexPageInfoResponseDto._();

  @Implements<StatsOverview>()
  const factory StatisticsGetMatchIndexPageInfoResponseDto({
    @JsonKey(name: 'halfsScores') required List<String> halfScores,
    required List<String> teamNames,
    required Score score,
    required List<PrimaryMetric> metrics,
    required bool weAtHome,
    @JsonKey(name: 'winByBuls') required bool winByBullitts,
    required bool winByOT,
    TeamLogo? teamLogo,
    required TeamProtocol? protocol,
  }) = _StatsOverview;

  String get lhsTeamName => teamNames.first;

  String get rhsTeamName => teamNames.last;

  List<Protocol> get uiProtocols => _mergeProtocols();

  List<Protocol> _mergeProtocols() {
    final result = <Protocol>[];
    var (i, j) = (0, 0);

    // I'm sorry for how this look :(
    final home = (protocol?.home?.map((e) => e.copyWith(isHome: true)))
            ?.toList(growable: false) ??
        const [];
    final away = (protocol?.away?.map((e) => e.copyWith(isHome: false)))
            ?.toList(growable: false) ??
        const [];

    while (i < home.length && j < away.length) {
      int.parse(home[i].time ?? '-1') <= int.parse(away[j].time ?? '-1')
          ? result.add(home[i++])
          : result.add(away[j++]);
    }

    while (i < home.length) {
      result.add(home[i++]);
    }
    while (j < away.length) {
      result.add(away[j++]);
    }

    return result;
  }

  factory StatisticsGetMatchIndexPageInfoResponseDto.fromJson(
    Map<String, dynamic> map,
  ) =>
      _$StatisticsGetMatchIndexPageInfoResponseDtoFromJson(map);
}

@freezed
class TeamLogo with _$TeamLogo {
  const factory TeamLogo({
    required String? home,
    required String? away,
    int? homePercent,
    int? awayPercent,
  }) = _TeamLogo;

  factory TeamLogo.fromJson(Map<String, dynamic> map) =>
      _$TeamLogoFromJson(map);
}

@freezed
class TeamProtocol with _$TeamProtocol {
  const factory TeamProtocol({
    List<Protocol>? home,
    List<Protocol>? away,
  }) = _TeamProtocol;

  factory TeamProtocol.fromJson(Map<String, dynamic> map) =>
      _$TeamProtocolFromJson(map);
}

@freezed
class Protocol with _$Protocol {
  const Protocol._();

  const factory Protocol({
    required String? playerName,
    required String? time,
    @JsonKey(name: 'majority') required bool isMajority,
    @JsonKey(name: 'minority') required bool isMinority,
    required bool isFinalGoal,
    required List<Map<String, String>?>? assists,
    @JsonKey(defaultValue: true) bool? isHome,
  }) = _Protocol;

  String? get uiAssists =>
      assists?.map((e) => e?.values.first.name ?? '-').toList().join(' + ');

  String get name =>
      playerName?.isNotEmpty ?? false ? playerName!.name : 'Соперник';

  bool isOurTeam(bool weAtHome) => isHome == weAtHome;

  factory Protocol.fromJson(Map<String, dynamic> map) =>
      _$ProtocolFromJson(map);
}
