import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/time.dart';
import 'game_interface.dart';

part 'past_game.freezed.dart';

part 'past_game.g.dart';

@freezed
class PastGame with _$PastGame {
  @Implements<GameInterface>()
  const factory PastGame({
    required String id,
    @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
    required DateTime date,
    required String groupId,
    required String awayTeamName,
    required String homeTeamName,
    required String gameType,
    bool? statisticsIsReady,
    String? statisticId,
    String? score,
    String? streamingURL,
    String? gameResult,
  }) = _PastGame;

  factory PastGame.fromJson(Map<String, dynamic> json) =>
      _$PastGameFromJson(json);
}
