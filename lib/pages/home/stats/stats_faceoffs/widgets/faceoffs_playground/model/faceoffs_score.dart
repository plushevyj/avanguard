import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'faceoffs_score.g.dart';

@JsonSerializable()
class FaceoffsScore extends Equatable {
  final int home;
  final int away;

  const FaceoffsScore(this.home, this.away);

  @override
  List<Object> get props => [home, away];

  factory FaceoffsScore.fromJson(Map<String, dynamic> map) =>
      _$FaceoffsScoreFromJson(map);

  Map<String, dynamic> toJson() => _$FaceoffsScoreToJson(this);

  String get ui => '$home-$away';

  String getPercent(bool weAtHome) => home + away == 0
      ? '0%'
      : '${((weAtHome ? home : away) / (home + away) * 100).round()}%';
}
