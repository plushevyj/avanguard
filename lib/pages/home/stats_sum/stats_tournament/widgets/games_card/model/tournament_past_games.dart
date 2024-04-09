import 'package:freezed_annotation/freezed_annotation.dart';

part 'tournament_past_games.freezed.dart';

part 'tournament_past_games.g.dart';

abstract class TournamentPastGames {}

@freezed
class MKCTablePagePastGamesResponseDto with _$MKCTablePagePastGamesResponseDto {
  const MKCTablePagePastGamesResponseDto._();

  const factory MKCTablePagePastGamesResponseDto({
    required List<MKCTablePagePastGameItemDto> games,
    required int pages,
  }) = _MKCTablePagePastGamesResponseDto;

  factory MKCTablePagePastGamesResponseDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MKCTablePagePastGamesResponseDtoFromJson(json);
}

@freezed
class MKCTablePagePastGameItemDto with _$MKCTablePagePastGameItemDto {
  const MKCTablePagePastGameItemDto._();

  const factory MKCTablePagePastGameItemDto({
    required String homeTeamName,
    required String awayTeamName,
    required String homeTeamLogo,
    required String awayTeamLogo,
    required int homeScore,
    required int awayScore,
    required List<List<int>> halfsScores,
    required MKCTablePagePastGamesTeamGoalsDto goals,
    required bool isOT,
    required bool isBuls,
    required String? translationLink,
    required String? statisticId,
    required bool techResult,
  }) = _MKCTablePagePastGameItemDto;

  String get halfsView =>
      halfsScores.map((e) => e.map((e) => e.toString()).join(':')).join(',  ');

  factory MKCTablePagePastGameItemDto.fromJson(Map<String, dynamic> json) =>
      _$MKCTablePagePastGameItemDtoFromJson(json);
}

@freezed
class MKCTablePagePastGamesTeamGoalsDto
    with _$MKCTablePagePastGamesTeamGoalsDto {
  const MKCTablePagePastGamesTeamGoalsDto._();

  const factory MKCTablePagePastGamesTeamGoalsDto({
    required MKCTablePagePastGamesGamesHalfGoalsDto homeTeam,
    required MKCTablePagePastGamesGamesHalfGoalsDto awayTeam,
  }) = _MKCTablePagePastGamesTeamGoalsDto;

  factory MKCTablePagePastGamesTeamGoalsDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MKCTablePagePastGamesTeamGoalsDtoFromJson(json);
}

@freezed
class MKCTablePagePastGamesGamesHalfGoalsDto
    with _$MKCTablePagePastGamesGamesHalfGoalsDto {
  const MKCTablePagePastGamesGamesHalfGoalsDto._();

  const factory MKCTablePagePastGamesGamesHalfGoalsDto({
    required List<PastGameGoalItemDto> firstHalf,
    required List<PastGameGoalItemDto> secondHalf,
    required List<PastGameGoalItemDto> thirdHalf,
    required List<PastGameGoalItemDto> overtime,
  }) = _MKCTablePagePastGamesGamesHalfGoalsDto;

  factory MKCTablePagePastGamesGamesHalfGoalsDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MKCTablePagePastGamesGamesHalfGoalsDtoFromJson(json);

  Iterable<PastGameGoalItemDto> get asIterable => [
        firstHalf,
        secondHalf,
        thirdHalf,
        overtime,
      ].expand((element) => element);
}

@freezed
class PastGameGoalItemDto with _$PastGameGoalItemDto {
  const PastGameGoalItemDto._();

  const factory PastGameGoalItemDto({
    required String playerFirstName,
    required String playerLastName,
    required int playerNumber,
    required String time,
  }) = _PastGameGoalItemDto;

  factory PastGameGoalItemDto.fromJson(Map<String, dynamic> json) =>
      _$PastGameGoalItemDtoFromJson(json);
}
