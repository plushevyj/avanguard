import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../model/number_and_percent.dart';
import '../../model/student.dart';

part 'corsi_row.g.dart';

@JsonSerializable()
class CorsiRow extends Equatable {
  final Student student;
  final int corsiFor;
  final int corsiAgainst;
  final int corsiForOZ;
  final int corsiAgainstOZ;
  final NumberAndPercent? corsiForPercent;
  final NumberAndPercent? corsiForOZPercent;

  const CorsiRow({
    required this.student,
    required this.corsiFor,
    required this.corsiAgainst,
    required this.corsiForOZ,
    required this.corsiAgainstOZ,
    this.corsiForPercent,
    this.corsiForOZPercent,
  });

  @override
  List<Object?> get props => [
        student,
        corsiFor,
        corsiAgainst,
        corsiForOZ,
        corsiAgainstOZ,
        corsiForPercent,
        corsiForOZPercent,
      ];

  factory CorsiRow.fromJson(Map<String, dynamic> map) =>
      _$CorsiRowFromJson(map);

  Map<String, dynamic> toJson() => _$CorsiRowToJson(this);
}
