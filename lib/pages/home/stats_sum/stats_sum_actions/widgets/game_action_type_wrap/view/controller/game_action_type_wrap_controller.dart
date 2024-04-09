import 'package:get/get.dart';

import '../../../../../../../../core/data_state/data_state.dart';
import '../../../../../../../../core/resource/rtext.dart';
import '../../../../../stats_sum_shots/widgets/stats_sum_shots_playground/data/dto/game_action_query_parameters.dart';
import '../../../stats_sum_shots_playground/view/controller/stats_sum_actions_playground_controller.dart';
import '../../domain/entity/game_action_type.dart';
import '../../domain/usecase/get_action_type_usecase.dart';
import '../model/game_action_type_view_model.dart';

class GameActionTypeWrapController extends GetxController {
  final uiState = GameActionTypeUiState.loading.obs;
  final actionTypes = <GameActionTypeViewModel>[].obs;

  static const _usecase = GetActionTypeUsecase();

  final actionsController = Get.put(StatsSumActionsPlaygroundController());

  Future<void> init() async {
    _showLoading();
    await _getActionTypes();
  }

  void chooseActionType(GameActionTypeViewModel actionType) {
    if (actionType.isSelected) return;
    actionTypes.forEach((e) => e.isSelected = false);
    actionType.isSelected = true;
    actionsController.updateActions(
      GameActionQueryParameters(
        actionIds: [actionType.id.toString()],
      )
    );
    actionTypes.refresh();
  }

  Future<void> _getActionTypes() async {
    final result = await _usecase();

    if (result.data case [GameActionType _, ...]) {
      _showResult(result.data);
    } else if (result.data == RText.noData) {
      _showEmpty();
    } else if (result.error is DataFailed) {
      _showError();
    }
  }

  void _showLoading() => uiState.value = GameActionTypeUiState.loading;

  void _showResult(List<GameActionType> types) {
    actionTypes.value = types.map(GameActionTypeViewModel.fromEntity).toList();
    chooseActionType(actionTypes.first);
    uiState.value = GameActionTypeUiState.success;
    actionsController.getActions();
  }

  void _showEmpty() => uiState.value = GameActionTypeUiState.empty;

  void _showError() {
    uiState.value = GameActionTypeUiState.error;
  }
}

enum GameActionTypeUiState { loading, success, empty, error }
