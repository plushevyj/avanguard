import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'shot.dart';

part 'shots.g.dart';

@JsonSerializable()
class Shots extends Equatable {
  final List<Shot> shotsOnGoalDangerous;
  final List<Shot> shotsOnGoal;
  final List<Shot> shots;
  final List<Shot> blockedShots;

  const Shots({
    required this.shotsOnGoalDangerous,
    required this.shotsOnGoal,
    required this.shots,
    required this.blockedShots,
  });

  @override
  List<Object> get props => [
        shotsOnGoalDangerous,
        shotsOnGoal,
        shots,
        blockedShots,
      ];

  factory Shots.fromJson(Map<String, dynamic> map) => _$ShotsFromJson(map);

  Map<String, dynamic> toJson() => _$ShotsToJson(this);
}
