import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'string_and_top5.g.dart';

@JsonSerializable()
class StringAndTop5 extends Equatable {
  final String value;
  final bool? topFive;
  final bool? topFiveBackwards;

  const StringAndTop5({
    required this.value,
    this.topFive,
    this.topFiveBackwards,
  });

  @override
  List<Object?> get props => [value, topFive, topFiveBackwards];

  factory StringAndTop5.fromJson(Map<String, dynamic> map) =>
      _$StringAndTop5FromJson(map);

  Map<String, dynamic> toJson() => _$StringAndTop5ToJson(this);
}
