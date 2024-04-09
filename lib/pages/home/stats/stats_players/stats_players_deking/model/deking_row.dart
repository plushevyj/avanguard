import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../model/student.dart';
import '../../model/number_and_top5.dart';

part 'deking_row.g.dart';

@JsonSerializable()
class DekingRow extends Equatable {
  final Student student;
  final NumberAndTop5 dekings;
  final NumberAndTop5 playerDekingAttempts;
  final NumberAndTop5 unsuccessfulDekings;
  final int dekingOnPlayerAttempts;
  final NumberAndTop5? successfulDekings;
  final NumberAndTop5? savedDekings;

  const DekingRow({
    required this.student,
    required this.dekings,
    required this.playerDekingAttempts,
    required this.unsuccessfulDekings,
    required this.dekingOnPlayerAttempts,
    this.successfulDekings,
    this.savedDekings,
  });

  @override
  List<Object?> get props => [
        student,
        dekings,
        playerDekingAttempts,
        unsuccessfulDekings,
        dekingOnPlayerAttempts,
        successfulDekings,
        savedDekings,
      ];

  factory DekingRow.fromJson(Map<String, dynamic> map) =>
      _$DekingRowFromJson(map);

  Map<String, dynamic> toJson() => _$DekingRowToJson(this);
}
