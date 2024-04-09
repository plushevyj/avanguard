import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'match_map.g.dart';

@JsonSerializable()
class MatchMap extends Equatable {
  final List<Item>? items;

  const MatchMap({required this.items});

  @override
  List<Object?> get props => [items];

  factory MatchMap.fromJson(Map<String, dynamic> map) =>
      _$MatchMapFromJson(map);

  Map<String, dynamic> toJson() => _$MatchMapToJson(this);
}
