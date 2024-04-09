import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_new.g.dart';

@JsonSerializable()
class GameNew extends Equatable {
  final String? id;
  final String? date;
  final String? statusEstimateGame;
  final bool? isCompletedEstimating;
  final String? opponentGroup;
  final String? playerGroup;
  final int? playerGroupScore;
  final int? opponentGroupScore;

  const GameNew({
    this.id,
    this.date,
    this.statusEstimateGame,
    this.isCompletedEstimating,
    this.opponentGroup,
    this.playerGroup,
    this.playerGroupScore,
    this.opponentGroupScore,
  });

  @override
  List<Object?> get props => [
    id,
    date,
    statusEstimateGame,
    isCompletedEstimating,
    opponentGroup,
    playerGroup,
    playerGroupScore,
    opponentGroupScore,
  ];

  factory GameNew.fromJson(Map<String, dynamic> map) => _$GameNewFromJson(map);

  Map<String, dynamic> toJson() => _$GameNewToJson(this);
}