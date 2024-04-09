import '../../domain/entity/game_action_type.dart';

class GameActionTypeViewModel extends GameActionType {
  bool isSelected = false;

  GameActionTypeViewModel({
    required super.id,
    required super.title,
    required super.name,
  });

  GameActionTypeViewModel.fromEntity(GameActionType type)
      : super(
          id: type.id,
          title: type.title,
          name: type.name,
        );
}
