import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../model/string_and_top5.dart';
import '../../model/student.dart';
import '../../model/number_and_top5.dart';

part 'time_row.g.dart';

@JsonSerializable()
class TimeRow extends Equatable {
  final Student student;
  @JsonKey(name: 'toi')
  final StringAndTop5 timeOnIce;
  final int shifts;
  final NumberAndTop5 replayedShifts;
  final StringAndTop5? averageShiftDuration;
  final NumberAndTop5? replayedShiftsPercent;

  const TimeRow({
    required this.student,
    required this.timeOnIce,
    required this.shifts,
    required this.replayedShifts,
    this.averageShiftDuration,
    this.replayedShiftsPercent,
  });

  @override
  List<Object?> get props => [
        student,
        timeOnIce,
        shifts,
        averageShiftDuration,
        replayedShifts,
        replayedShiftsPercent,
      ];

  factory TimeRow.fromJson(Map<String, dynamic> map) => _$TimeRowFromJson(map);

  Map<String, dynamic> toJson() => _$TimeRowToJson(this);
}
