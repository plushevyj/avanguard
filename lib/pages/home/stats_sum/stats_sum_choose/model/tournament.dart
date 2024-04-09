import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/time.dart';
import '../../../../../module/game/model/game_interface.dart';

part 'tournament.freezed.dart';

part 'tournament.g.dart';

@freezed
class Tournament with _$Tournament {
  const factory Tournament({
    required int teamMKCId,
    required String tournamentName,
    required String teamName,
    required int rank,
    required int points,
    required int againstTopThree,
    required int potentialPoints,
    @JsonKey(defaultValue: [])
    required List<Game> games,
    required String groupName,
    required bool isFinal,
    required String season,
  }) = _Tournament;

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);
}

@freezed
class Game with _$Game {
  const Game._();

  @Implements<GameInterface>()
  const factory Game({
    @JsonKey(fromJson: Time.stringToDate, toJson: Time.dateToString)
    required DateTime date,
    required String opponent,
    required int homeScore,
    required int awayScore,
    required String resultDiagram,
    String? statisticId,
  }) = _Game;

  bool get isHomeWin => homeScore > awayScore;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
