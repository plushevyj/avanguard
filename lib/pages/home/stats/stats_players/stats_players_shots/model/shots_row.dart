import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../model/student.dart';
import '../../model/number_and_top5.dart';

part 'shots_row.g.dart';

@JsonSerializable()
class ShotsRow extends Equatable {
  final Student student;
  final NumberAndTop5 goals;
  final NumberAndTop5 shots;
  final NumberAndTop5 shotsOnGoal;
  final NumberAndTop5 unsuccessfulShotAttempts;
  final NumberAndTop5? shotsAccuracy;
  final NumberAndTop5? shotsRealization;

  const ShotsRow({
    required this.student,
    required this.goals,
    required this.shots,
    required this.shotsOnGoal,
    required this.unsuccessfulShotAttempts,
    this.shotsAccuracy,
    this.shotsRealization,
  });

  @override
  List<Object?> get props => [
        student,
        goals,
        shots,
        shotsRealization,
        shotsOnGoal,
        shotsAccuracy,
        unsuccessfulShotAttempts,
      ];

  factory ShotsRow.fromJson(Map<String, dynamic> map) =>
      _$ShotsRowFromJson(map);

  Map<String, dynamic> toJson() => _$ShotsRowToJson(this);
}
