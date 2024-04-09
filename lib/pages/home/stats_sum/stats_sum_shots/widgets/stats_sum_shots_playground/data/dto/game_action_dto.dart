import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/game_action.dart';
import '../../view/constant/playground_const.dart';


part 'game_action_dto.freezed.dart';

part 'game_action_dto.g.dart';

@freezed
class GameActionDto with _$GameActionDto {
  const GameActionDto._();

  const factory GameActionDto({
    @Default('-') String name,
    // @Default('-') String engName,
    @Default('-') String engNameShort,
    // required GameActionNameDto type,
    @Default('-') String playerName,
    @Default('-') String time,
    @Default(.0) double posY,
    @Default(.0) double posX,
    @Default(.0) double opponentPosY,
    @Default(.0) double opponentPosX,
    // @Default(.0) double goalSpotX,
    // @Default(.0) double goalSpotY,
    // @Default('-') String importance,
    // @Default('-') String plrs,
    bool? weAtHome,
    bool? isOur,
    // @Default(0) int? teamId,
    // @Default('-') String teamName,
    // @Default('-') String opponentTeamName,
    // @Default('-') String half,
    // @Default('-') String zoneName,
    // @Default(VideoOffsets(start: 0, end: 0)) VideoOffsets videoOffsets,
    // @Default('-') String linkToVideo,
    // @Default('-') String videoTime,
  }) = _GameActionDto;

  factory GameActionDto.fromJson(Map<String, dynamic> json) =>
      _$GameActionDtoFromJson(json);

  GameAction toEntity() => GameAction(
        // 1 turn on map (compared to web) so we need to swap x and y
        x: _validateAxis(posY),
        y: _validateAxis(posX),
        ox: _validateAxis(opponentPosY),
        oy: _validateAxis(opponentPosX),
        weAtHome: weAtHome ?? false,
        isOur: isOur ?? false,
        name: name,
        shortName: engNameShort,
        playerName: playerName,
        time: time,
      );

  double _validateAxis(double axis) {
    if (weAtHome == null || isOur == null) return 0;
    if (axis < 0 || axis > PlaygroundConst.maxY) return 0;
    return axis;
  }
}

@freezed
class GameActionNameDto with _$GameActionNameDto {
  const GameActionNameDto._();

  const factory GameActionNameDto({
    @Default('-') String name,
    @Default('-') String engName,
    @Default('-') String engNameShort,
  }) = _GameActionNameDto;

  factory GameActionNameDto.fromJson(Map<String, dynamic> json) =>
      _$GameActionNameDtoFromJson(json);
}

@freezed
class VideoOffsets with _$VideoOffsets {
  const VideoOffsets._();

  const factory VideoOffsets({
    @Default(0) int start,
    @Default(0) int end,
  }) = _VideoOffsets;

  factory VideoOffsets.fromJson(Map<String, dynamic> json) =>
      _$VideoOffsetsFromJson(json);
}
