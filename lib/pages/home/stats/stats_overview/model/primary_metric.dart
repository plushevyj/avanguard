import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'primary_metric.g.dart';

@JsonSerializable()
class PrimaryMetric extends Equatable {
  final MetricsData data;
  final String name;

  const PrimaryMetric({required this.data, required this.name});

  @override
  List<Object> get props => [data, name];

  factory PrimaryMetric.fromJson(Map<String, dynamic> map) =>
      _$PrimaryMetricFromJson(map);

  Map<String, dynamic> toJson() => _$PrimaryMetricToJson(this);
}

@JsonSerializable()
class MetricsData extends Equatable {
  final String home;
  final String away;
  final int? homePercent;
  final int? awayPercent;

  const MetricsData({
    required this.home,
    required this.away,
    this.homePercent,
    this.awayPercent,
  });

  @override
  List<Object?> get props => [home, away, homePercent, awayPercent];

  factory MetricsData.fromJson(Map<String, dynamic> map) =>
      _$MetricsDataFromJson(map);

  Map<String, dynamic> toJson() => _$MetricsDataToJson(this);
}
