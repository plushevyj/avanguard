import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shot.g.dart';

// @JsonSerializable()
// class ShotPair extends Equatable {
//   final List<Shot> shots;
//
//   const ShotPair(this.shots);
//
//   @override
//   List<Object> get props => [shots];
//
//   factory ShotPair.fromJson(Map<String, dynamic> map) => _$ShotPairFromJson(map);
//
//   Map<String, dynamic> toJson() => _$ShotPairToJson(this);
// }

@JsonSerializable()
class Shot extends Equatable {
  final String name;
  final int value;
  final double percentValue;

  const Shot({
    required this.name,
    required this.value,
    required this.percentValue,
  });

  @override
  List<Object> get props => [name, value, percentValue];

  factory Shot.fromJson(Map<String, dynamic> map) => _$ShotFromJson(map);

  Map<String, dynamic> toJson() => _$ShotToJson(this);
}
