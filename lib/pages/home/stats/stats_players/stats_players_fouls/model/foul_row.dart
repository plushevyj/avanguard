import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../model/number_and_percent.dart';
import '../../model/string_and_top5.dart';
import '../../model/student.dart';
import '../../model/number_and_top5.dart';

part 'foul_row.g.dart';

@JsonSerializable()
class FoulRow extends Equatable {
  final Student student;
  final NumberAndTop5 earnedFouls;
  final NumberAndTop5 fouls;
  final StringAndTop5 foulTime;
  final NumberAndPercent? foulDifference;
  final NumberAndPercent? plusMinus;
  final int? plus;
  final int? minus;

  const FoulRow({
    required this.student,
    required this.earnedFouls,
    required this.fouls,
    required this.foulTime,
    this.foulDifference,
    this.plusMinus,
    this.plus,
    this.minus,
  });

  @override
  List<Object?> get props => [
        student,
        earnedFouls,
        fouls,
        foulTime,
        foulDifference,
        plusMinus,
        plus,
        minus,
      ];

  factory FoulRow.fromJson(Map<String, dynamic> map) => _$FoulRowFromJson(map);

  Map<String, dynamic> toJson() => _$FoulRowToJson(this);
}
