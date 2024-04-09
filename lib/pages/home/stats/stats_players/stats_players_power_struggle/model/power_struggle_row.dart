import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../model/number_and_percent.dart';
import '../../model/student.dart';
import '../../model/number_and_top5.dart';

part 'power_struggle_row.g.dart';

@JsonSerializable()
class PowerStruggleRow extends Equatable {
  final Student student;
  final NumberAndTop5 hits;
  final int winBattles;
  final int allBattles;
  final NumberAndPercent? winBattlesPercent;

  const PowerStruggleRow({
    required this.student,
    required this.hits,
    required this.winBattles,
    required this.allBattles,
    this.winBattlesPercent,
  });

  @override
  List<Object?> get props => [
        student,
        hits,
        winBattles,
        allBattles,
        winBattlesPercent,
      ];

  factory PowerStruggleRow.fromJson(Map<String, dynamic> map) =>
      _$PowerStruggleRowFromJson(map);

  Map<String, dynamic> toJson() => _$PowerStruggleRowToJson(this);
}
