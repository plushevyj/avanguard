import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player.g.dart';

@JsonSerializable()
class Player extends Equatable {
  final int shiftsCount;
  @JsonKey(fromJson: _toInt)
  final int value;
  final String firstName;
  final String lastName;
  final int playerNumber;
  final String playerId;
  final String totalTime;

  static int _toInt(json) => int.parse(json);

  const Player({
    required this.shiftsCount,
    required this.value,
    required this.firstName,
    required this.lastName,
    required this.playerNumber,
    required this.playerId,
    required this.totalTime,
  });

  @override
  List<Object> get props => [
        shiftsCount,
        value,
        firstName,
        lastName,
        playerNumber,
        playerId,
        totalTime,
      ];

  factory Player.fromJson(Map<String, dynamic> map) => _$PlayerFromJson(map);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}
