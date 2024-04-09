import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/time.dart';

part 'next_game.g.dart';

part 'next_game.freezed.dart';

@freezed
class NextGame with _$NextGame {
  const factory NextGame({
    required String id,
    @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
    required DateTime date,
    required String groupId,
    required String awayTeamName,
    required String homeTeamName,
    required String gameType,
  }) = _NextGame;

  factory NextGame.fromJson(Map<String, dynamic> map) =>
      _$NextGameFromJson(map);
}
