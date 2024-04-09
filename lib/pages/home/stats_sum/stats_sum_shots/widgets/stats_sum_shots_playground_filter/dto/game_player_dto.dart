import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/utils/role_translator.dart';
import '../entity/game_player.dart';
import 'playground_player_dto_interface.dart';

part 'game_player_dto.freezed.dart';

part 'game_player_dto.g.dart';

@freezed
class GamePlayerDto with _$GamePlayerDto {
  const GamePlayerDto._();

  @Implements<PlaygroundPlayerDtoInterface>()
  const factory GamePlayerDto({
    required int avangardId,
    required String firstName,
    required String lastName,
    @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
    required String hockeyRole,
    @Default(-1) int shotsCount,
  }) = _GamePlayerDto;

  factory GamePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$GamePlayerDtoFromJson(json);

  static GamePlayer toEntity(GamePlayerDto dto) => GamePlayer(
        avangardId: dto.avangardId,
        firstName: dto.firstName,
        lastName: dto.lastName,
        shotsCount: dto.shotsCount,
        hockeyRole: dto.hockeyRole,
      );
}
