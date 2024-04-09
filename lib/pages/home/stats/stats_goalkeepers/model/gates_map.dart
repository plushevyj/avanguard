import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'string_and_percent_value.dart';

part 'gates_map.g.dart';

@JsonSerializable()
class GatesMap extends Equatable {
  final StringAndPercentValue? topLeft;
  final StringAndPercentValue? topMid;
  final StringAndPercentValue? topRight;
  final StringAndPercentValue? midLeft;
  final StringAndPercentValue? center;
  final StringAndPercentValue? midRight;
  final StringAndPercentValue? botLeft;
  final StringAndPercentValue? botMid;
  final StringAndPercentValue? botRight;

  const GatesMap({
    this.topLeft,
    this.topMid,
    this.topRight,
    this.midLeft,
    this.center,
    this.midRight,
    this.botLeft,
    this.botMid,
    this.botRight,
  });

  @override
  List<Object?> get props => [
        topLeft,
        topMid,
        topRight,
        midLeft,
        center,
        midRight,
        botLeft,
        botMid,
        botRight,
      ];

  factory GatesMap.fromJson(Map<String, dynamic> map) =>
      _$GatesMapFromJson(map);

  Map<String, dynamic> toJson() => _$GatesMapToJson(this);
}
