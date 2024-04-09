import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'gates_map.dart';
import 'name_value.dart';
import 'shots_by_zones.dart';

part 'goalkeeper_stats.g.dart';

@JsonSerializable()
class GoalkeeperStats extends Equatable {
  final GatesMap? gatesMap;
  final List<NameValue>? topStats;
  final ShotsByZones? shotsByZones;

  const GoalkeeperStats({
    required this.gatesMap,
    required this.topStats,
    required this.shotsByZones,
  });

  @override
  List<Object?> get props => [gatesMap, topStats, shotsByZones];

  factory GoalkeeperStats.fromJson(Map<String, dynamic> map) =>
      _$GoalkeeperStatsFromJson(map);

  Map<String, dynamic> toJson() => _$GoalkeeperStatsToJson(this);
}
