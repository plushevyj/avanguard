import 'package:freezed_annotation/freezed_annotation.dart';

part 'season.freezed.dart';

part 'season.g.dart';

@freezed
class Season with _$Season {
  const factory Season({
    required String id,
    required String name,
    required String startDate,
    required String endDate,
  }) = _Season;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}
