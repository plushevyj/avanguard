import 'package:freezed_annotation/freezed_annotation.dart';

part 'tournament_next_games.freezed.dart';

part 'tournament_next_games.g.dart';

abstract class TournamentNextGames {}

@freezed
class MKCTablePageNextGameResponseDto with _$MKCTablePageNextGameResponseDto {
  const MKCTablePageNextGameResponseDto._();

  const factory MKCTablePageNextGameResponseDto({
    @JsonKey(defaultValue: [])
    required List<MKCTablePageNextGameItemDto> games,
    // int? pages,
  }) = _MKCTablePageNextGameResponseDto;

  factory MKCTablePageNextGameResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MKCTablePageNextGameResponseDtoFromJson(json);
}

@freezed
class MKCTablePageNextGameItemDto with _$MKCTablePageNextGameItemDto {
  const MKCTablePageNextGameItemDto._();

  const factory MKCTablePageNextGameItemDto({
    required String homeTeamName,
    // required String homeTeamAge,
    required String homeTeamLogo,
    required String awayTeamName,
    // required String awayTeamAge,
    required String awayTeamLogo,
    required String date,
    String? time,
  }) = _MKCTablePageNextGameItemDto;

  String get timeView => time == null ? '' : ', $time';

  factory MKCTablePageNextGameItemDto.fromJson(Map<String, dynamic> json) =>
      _$MKCTablePageNextGameItemDtoFromJson(json);
}
