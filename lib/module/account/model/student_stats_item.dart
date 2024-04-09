import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_stats_item.g.dart';

part 'student_stats_item.freezed.dart';

@freezed
class StudentStatsItem with _$StudentStatsItem {
  const factory StudentStatsItem({
    required String id,
    required String season,
    required String number,
    required String teamName,
    required String gamesNumber,
    required String goalsNumber,
    required String passesNumber,
    required String pointsNumber,
    required String penaltiesNumber,
  }) = _StudentStatsItem;

  factory StudentStatsItem.fromJson(Map<String, dynamic> map) =>
      _$StudentStatsItemFromJson(map);
}
