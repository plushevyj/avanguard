// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shots_by_zones.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShotsByZones _$ShotsByZonesFromJson(Map<String, dynamic> json) => ShotsByZones(
      leftMidZone: json['leftMidZone'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['leftMidZone'] as Map<String, dynamic>),
      midZone: json['midZone'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['midZone'] as Map<String, dynamic>),
      rightMidZone: json['rightMidZone'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['rightMidZone'] as Map<String, dynamic>),
      leftBotZone: json['leftBotZone'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['leftBotZone'] as Map<String, dynamic>),
      midBotZone: json['midBotZone'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['midBotZone'] as Map<String, dynamic>),
      rightBotZone: json['rightBotZone'] == null
          ? null
          : StringAndPercentValue.fromJson(
              json['rightBotZone'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShotsByZonesToJson(ShotsByZones instance) =>
    <String, dynamic>{
      'leftMidZone': instance.leftMidZone,
      'midZone': instance.midZone,
      'rightMidZone': instance.rightMidZone,
      'leftBotZone': instance.leftBotZone,
      'midBotZone': instance.midBotZone,
      'rightBotZone': instance.rightBotZone,
    };
