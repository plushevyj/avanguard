import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'string_and_percent_value.dart';

part 'shots_by_zones.g.dart';

@JsonSerializable()
class ShotsByZones extends Equatable {
  final StringAndPercentValue? leftMidZone;
  final StringAndPercentValue? midZone;
  final StringAndPercentValue? rightMidZone;
  final StringAndPercentValue? leftBotZone;
  final StringAndPercentValue? midBotZone;
  final StringAndPercentValue? rightBotZone;

  const ShotsByZones({
    this.leftMidZone,
    this.midZone,
    this.rightMidZone,
    this.leftBotZone,
    this.midBotZone,
    this.rightBotZone,
  });

  @override
  List<Object?> get props => [
        leftMidZone,
        midZone,
        rightMidZone,
        leftBotZone,
        midBotZone,
        rightBotZone,
      ];

  factory ShotsByZones.fromJson(Map<String, dynamic> map) =>
      _$ShotsByZonesFromJson(map);

  Map<String, dynamic> toJson() => _$ShotsByZonesToJson(this);
}
