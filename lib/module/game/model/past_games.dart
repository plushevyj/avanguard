import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'past_game.dart';

part 'past_games.freezed.dart';

part 'past_games.g.dart';

@Freezed()
class PastGames with _$PastGames {
  const factory PastGames({
    required List<PastGame> games,
    required int pages,
    required bool isLastPages,
  }) = _PastGames;

  factory PastGames.fromJson(Map<String, dynamic> json) =>
      _$PastGamesFromJson(json);
}
