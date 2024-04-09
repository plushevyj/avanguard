import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'number_and_percent.dart';
import 'student.dart';
import 'number_and_top5.dart';

part 'classic_row.g.dart';

@JsonSerializable()
class ClassicRow extends Equatable {
  final Student student;
  final NumberAndTop5 goals;
  final NumberAndTop5 assists;
  final NumberAndTop5 blockedShots;
  final NumberAndPercent? plusMinus;
  final NumberAndTop5? score;
  final int? plus;
  final int? minus;

  const ClassicRow({
    required this.student,
    required this.goals,
    required this.assists,
    required this.blockedShots,
    this.plusMinus,
    this.plus,
    this.minus,
    this.score,
  });

  @override
  List<Object?> get props => [
    student,
    score,
    goals,
    assists,
    plusMinus,
    plus,
    minus,
    blockedShots,
  ];

  factory ClassicRow.fromJson(Map<String, dynamic> map) =>
      _$ClassicRowFromJson(map);

  Map<String, dynamic> toJson() => _$ClassicRowToJson(this);
}