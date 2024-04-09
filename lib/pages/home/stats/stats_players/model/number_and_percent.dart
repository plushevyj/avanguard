import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'number_and_percent.g.dart';

@JsonSerializable()
class NumberAndPercent extends Equatable {
  final int value;
  final int percent;

  const NumberAndPercent({required this.value, required this.percent});

  @override
  List<Object> get props => [value, percent];

  factory NumberAndPercent.fromJson(Map<String, dynamic> map) =>
      _$NumberAndPercentFromJson(map);

  Map<String, dynamic> toJson() => _$NumberAndPercentToJson(this);
}
