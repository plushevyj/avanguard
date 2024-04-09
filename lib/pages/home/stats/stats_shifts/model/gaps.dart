import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'shifts_gap.dart';

part 'gaps.g.dart';

@JsonSerializable()
class Gaps extends Equatable {
  @JsonKey(toJson: _toJson)
  final List<ShiftsGap>? majority;
  @JsonKey(toJson: _toJson)
  final List<ShiftsGap>? minority;

  static List<Map<String, dynamic>>? _toJson(List<ShiftsGap>? gaps) {
    return gaps?.map((e) => e.toJson()).toList();
  }

  const Gaps({required this.majority, required this.minority});

  @override
  List<Object?> get props => [majority, minority];

  factory Gaps.fromJson(Map<String, dynamic> map) => _$GapsFromJson(map);

  Map<String, dynamic> toJson() => _$GapsToJson(this);
}
