import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'score.g.dart';

@JsonSerializable()
class Score extends Equatable {
  final ScoreData data;
  final String name;

  const Score({required this.data, required this.name});

  @override
  List<Object> get props => [data, name];

  factory Score.fromJson(Map<String, dynamic> map) => _$ScoreFromJson(map);

  Map<String, dynamic> toJson() => _$ScoreToJson(this);
}

@JsonSerializable()
class ScoreData extends Equatable {
  final int home;
  final int away;

  const ScoreData({required this.home, required this.away});

  bool get isHomeWin => home > away;

  @override
  List<Object> get props => [home, away];

  factory ScoreData.fromJson(Map<String, dynamic> map) => _$ScoreDataFromJson(map);

  Map<String, dynamic> toJson() => _$ScoreDataToJson(this);
}
