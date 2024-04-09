import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'string_and_percent_value.g.dart';

@JsonSerializable()
class StringAndPercentValue extends Equatable {
  final String value;
  final num percentValue;

  const StringAndPercentValue(this.value, this.percentValue);

  @override
  List<Object> get props => [value, percentValue];

  factory StringAndPercentValue.fromJson(Map<String, dynamic> map) =>
      _$StringAndPercentValueFromJson(map);

  Map<String, dynamic> toJson() => _$StringAndPercentValueToJson(this);
}
