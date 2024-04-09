import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shifts_gap.g.dart';

@JsonSerializable()
class ShiftsGap extends Equatable {
  final int start;
  final int end;
  final int duration;

  const ShiftsGap({required this.start, required this.end})
      : duration = end - start;

  @override
  List<Object> get props => [start, end, duration];

  ShiftsGap.fromJson(Map<String, dynamic> map)
      : start = map['start'] as int,
        end = map['end'] as int,
        duration = map['end'] - map['start'] as int;

  Map<String, dynamic> toJson() => _$ShiftsGapToJson(this);
}
