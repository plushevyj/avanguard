// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goalkeepers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoalkeepersImpl _$$GoalkeepersImplFromJson(Map<String, dynamic> json) =>
    _$GoalkeepersImpl(
      names: (json['names'] as List<dynamic>?)
          ?.map((e) => Goalkeeper.fromJson(e as Map<String, dynamic>))
          .toList(),
      weAtHome: json['weAtHome'] as bool?,
      winByBuls: json['winByBuls'] as bool?,
      winByOT: json['winByOT'] as bool?,
    );

Map<String, dynamic> _$$GoalkeepersImplToJson(_$GoalkeepersImpl instance) =>
    <String, dynamic>{
      'names': instance.names,
      'weAtHome': instance.weAtHome,
      'winByBuls': instance.winByBuls,
      'winByOT': instance.winByOT,
    };
