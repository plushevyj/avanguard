import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'match_map.dart';

part 'playground.g.dart';

@JsonSerializable()
class Playground extends Equatable {
  final List<MatchMap> home;
  final List<MatchMap> away;
  final bool weAtHome;
  @JsonKey(name: 'winByBuls')
  final bool winByBullitts;
  @JsonKey(name: 'winByOT')
  final bool winByOvertime;
  @JsonKey(name: 'showUnsuccessfullShotAttempts')
  final bool showUnsuccessfulShotAttempts;

  const Playground({
    required this.home,
    required this.away,
    required this.weAtHome,
    required this.winByBullitts,
    required this.winByOvertime,
    required this.showUnsuccessfulShotAttempts,
  });

  @override
  List<Object?> get props => [
        home,
        away,
        weAtHome,
        winByBullitts,
        winByOvertime,
        showUnsuccessfulShotAttempts,
      ];

  factory Playground.fromJson(Map<String, dynamic> map) =>
      _$PlaygroundFromJson(map);

  Map<String, dynamic> toJson() => _$PlaygroundToJson(this);
}
