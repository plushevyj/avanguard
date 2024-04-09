// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goalkeeper_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoalkeeperStats _$GoalkeeperStatsFromJson(Map<String, dynamic> json) =>
    GoalkeeperStats(
      gatesMap: json['gatesMap'] == null
          ? null
          : GatesMap.fromJson(json['gatesMap'] as Map<String, dynamic>),
      topStats: (json['topStats'] as List<dynamic>?)
          ?.map((e) => NameValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      shotsByZones: json['shotsByZones'] == null
          ? null
          : ShotsByZones.fromJson(json['shotsByZones'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GoalkeeperStatsToJson(GoalkeeperStats instance) =>
    <String, dynamic>{
      'gatesMap': instance.gatesMap,
      'topStats': instance.topStats,
      'shotsByZones': instance.shotsByZones,
    };
