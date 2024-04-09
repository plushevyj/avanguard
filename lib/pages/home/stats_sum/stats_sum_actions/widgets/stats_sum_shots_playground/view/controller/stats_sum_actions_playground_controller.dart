import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../../../../core/constants/constants.dart';
import '../../../../../../../../core/data_state/data_state.dart';
import '../../../../../stats_sum_shots/widgets/stats_sum_shots_playground/data/dto/game_action_query_parameters.dart';
import '../../../../../stats_sum_shots/widgets/stats_sum_shots_playground/domain/entity/game_action.dart';
import '../../../../../widgets/match_picker/match_picker_controller.dart';
import '../../../../../widgets/match_picker/model/statistics_mkc_matches_response_dto.dart';
import '../../domain/usecase/get_actions_usecase.dart';
import '../presenter/action_drawer.dart';

class StatsSumActionsPlaygroundController extends GetxController {
  final RxList<Widget> actionsWidgets = <Widget>[].obs;
  final uiState = StatsSumActionsPlaygroundUIState.loading.obs;

  final _matches = Get.put(MatchPickerController()).chosenMatches;
  var _chosenIds = <String>[];
  static const _actionDrawer = ActionDrawer();

  static const _getActionsUsecase = GetActionsUsecase();
  var _actions = <GameAction>[];

  @override
  void onInit() {
    _subscribeToMatchPicker();
    getActions();
    super.onInit();
  }

  // call from GameActionTypeWrapController
  Future<void> getActions() async {
    uiState.value = StatsSumActionsPlaygroundUIState.loading;
    _chosenIds = _matches.ids;
    if (_chosenIds.isEmpty) {
      _showEmpty();
      return;
    }
    final params = GameActionQueryParameters(
      statisticIds: _chosenIds,
      type: 'action_map',
    );

    final result = await _getActionsUsecase(params: params);

    if (result is DataSuccess<List<GameAction>>) {
      _showResult(result.data!);
    } else if (result is DataSuccess<String>) {
      _showEmpty();
    } else {
      _showError(result.error!.$1.toString());
    }
  }

  void redrawActions() {
    if (uiState.value != StatsSumActionsPlaygroundUIState.success) return;
    actionsWidgets.value = _actionDrawer.draw(_actions);
  }

  Future<void> updateActions(GameActionQueryParameters params) async {
    _getActionsUsecase.updateParams(params);
    getActions();
  }

  void _showEmpty() {
    uiState.value = StatsSumActionsPlaygroundUIState.empty;
  }

  void _showResult(List<GameAction> actions) {
    _actions = actions;
    actionsWidgets.value = _actionDrawer.draw(actions);
    uiState.value = StatsSumActionsPlaygroundUIState.success;
  }

  void _showError(String message) {
    debugPrint(message);
    uiState.value = StatsSumActionsPlaygroundUIState.error;
  }

  void _subscribeToMatchPicker() {
    _matches.stream.debounceTime(kDebounceTime).listen(_shotsOnChange);
  }

  void _shotsOnChange(List<StatisticsMKCMatchesResponseDto> matches) {
    _chosenIds = matches.ids;
    getActions();
  }
}

enum StatsSumActionsPlaygroundUIState { loading, success, empty, error }
