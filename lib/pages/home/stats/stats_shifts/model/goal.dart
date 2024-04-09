import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'goal.g.dart';

@JsonSerializable()
class Goal extends Equatable {
  final int time;
  final String half;
  @JsonKey(fromJson: _toInt)
  final int playerId;
  final bool isOur;
  final String currentScore;

  static int _toInt(json) => int.parse(json);

  const Goal({
    required this.time,
    required this.half,
    required this.playerId,
    required this.isOur,
    required this.currentScore,
  });

  @override
  List<Object> get props => [
        time,
        half,
        playerId,
        isOur,
        currentScore,
      ];

  factory Goal.fromJson(Map<String, dynamic> map) => _$GoalFromJson(map);

  Map<String, dynamic> toJson() => _$GoalToJson(this);
}
