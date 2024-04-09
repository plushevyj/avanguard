import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'number_and_top5.g.dart';

@JsonSerializable()
class NumberAndTop5 extends Equatable {
  final int value;
  final bool? topFive;
  final bool? topFiveBackwards;

  const NumberAndTop5({
    required this.value,
    this.topFive,
    this.topFiveBackwards,
  });

  @override
  List<Object?> get props => [value, topFive, topFiveBackwards];

  factory NumberAndTop5.fromJson(Map<String, dynamic> map) =>
      _$NumberAndTop5FromJson(map);

  Map<String, dynamic> toJson() => _$NumberAndTop5ToJson(this);
}
