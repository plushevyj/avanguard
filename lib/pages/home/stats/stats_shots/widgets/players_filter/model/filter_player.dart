import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../../../core/utils/role_translator.dart';
import '../../../../../../../widgets/multi_select/my_gf_multi_select.dart';

part 'filter_player.g.dart';

@JsonSerializable()
class FilterPlayer extends Equatable implements MultiSelectPlayerInterface {
  @override
  final String label;
  final String value;
  @override
  @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
  final String hockeyRole;
  @override
  final int shotsCount;

  const FilterPlayer({
    required this.label,
    required this.value,
    required this.hockeyRole,
    required this.shotsCount,
  });

  @override
  List<Object> get props => [label, value, hockeyRole, shotsCount];

  factory FilterPlayer.fromJson(Map<String, dynamic> map) =>
      _$FilterPlayerFromJson(map);

  Map<String, dynamic> toJson() => _$FilterPlayerToJson(this);
}
