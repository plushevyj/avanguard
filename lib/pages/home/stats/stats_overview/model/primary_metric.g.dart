// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primary_metric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrimaryMetric _$PrimaryMetricFromJson(Map<String, dynamic> json) =>
    PrimaryMetric(
      data: MetricsData.fromJson(json['data'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$PrimaryMetricToJson(PrimaryMetric instance) =>
    <String, dynamic>{
      'data': instance.data,
      'name': instance.name,
    };

MetricsData _$MetricsDataFromJson(Map<String, dynamic> json) => MetricsData(
      home: json['home'] as String,
      away: json['away'] as String,
      homePercent: json['homePercent'] as int?,
      awayPercent: json['awayPercent'] as int?,
    );

Map<String, dynamic> _$MetricsDataToJson(MetricsData instance) =>
    <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
      'homePercent': instance.homePercent,
      'awayPercent': instance.awayPercent,
    };
