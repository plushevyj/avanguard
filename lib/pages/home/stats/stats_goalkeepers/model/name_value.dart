import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'name_value.g.dart';

@JsonSerializable()
class NameValue extends Equatable {
  final String name;
  final String value;

  const NameValue(this.name, this.value);

  @override
  List<Object> get props => [name, value];

  factory NameValue.fromJson(Map<String, dynamic> map) =>
      _$NameValueFromJson(map);

  Map<String, dynamic> toJson() => _$NameValueToJson(this);
}
