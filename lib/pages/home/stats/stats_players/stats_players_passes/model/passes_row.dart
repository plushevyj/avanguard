import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../model/number_and_percent.dart';
import '../../model/student.dart';
import '../../model/number_and_top5.dart';

part 'passes_row.g.dart';

@JsonSerializable()
class PassesRow extends Equatable {
  final Student student;
  final NumberAndTop5 accuratePasses;
  final NumberAndTop5 passesCount;
  final NumberAndTop5 dangerousPassesTaken;
  final NumberAndTop5 accurateOZPasses;
  final NumberAndTop5 OZPassesCount;
  final NumberAndTop5 dangerousOZPassesTaken;
  final NumberAndPercent? accuratePassesPercent;
  final NumberAndPercent? accurateOZPassesPercent;

  const PassesRow({
    required this.student,
    required this.accuratePasses,
    required this.passesCount,
    required this.dangerousPassesTaken,
    required this.accurateOZPasses,
    required this.OZPassesCount,
    required this.dangerousOZPassesTaken,
    this.accuratePassesPercent,
    this.accurateOZPassesPercent,
  });

  @override
  List<Object?> get props => [
        student,
        accuratePasses,
        passesCount,
        accuratePassesPercent,
        dangerousPassesTaken,
        accurateOZPasses,
        OZPassesCount,
        dangerousOZPassesTaken,
        accurateOZPassesPercent,
      ];

  factory PassesRow.fromJson(Map<String, dynamic> map) =>
      _$PassesRowFromJson(map);

  Map<String, dynamic> toJson() => _$PassesRowToJson(this);
}
