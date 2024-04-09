import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/game_action_type.dart';

part 'game_action_type_dto.freezed.dart';

part 'game_action_type_dto.g.dart';

@freezed
class GameActionTypeDto with _$GameActionTypeDto {
  const GameActionTypeDto._();

  const factory GameActionTypeDto({
    required int id,
    required String name,
    required String engNameShort,
  }) = _GameActionTypeDto;

  factory GameActionTypeDto.fromJson(Map<String, dynamic> json) =>
      _$GameActionTypeDtoFromJson(json);

  GameActionType toEntity() => GameActionType(
    id: id,
    name: name,
    title: engNameShort,
  );
}
