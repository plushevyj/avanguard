import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'string_and_percent.g.dart';

@JsonSerializable()
class StringAndPercent extends Equatable {
  final String value;
  final int percent;

  const StringAndPercent({required this.value, required this.percent});

  @override
  List<Object> get props => [value, percent];

  factory StringAndPercent.fromJson(Map<String, dynamic> map) =>
      _$StringAndPercentFromJson(map);

  Map<String, dynamic> toJson() => _$StringAndPercentToJson(this);
}
