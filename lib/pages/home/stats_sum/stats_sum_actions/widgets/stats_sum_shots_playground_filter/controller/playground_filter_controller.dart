import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../../../core/constants/constants.dart';
import '../../../../controller/stats_sum_controller.dart';
import '../../../../controller/stats_sum_tab.dart';
import '../../../../repository/stats_sum_repository.dart';
import '../../../../widgets/match_picker/match_picker_controller.dart';
import '../../../../widgets/match_picker/model/statistics_mkc_matches_response_dto.dart';
import '../../stats_sum_shots_playground/view/controller/stats_sum_actions_playground_controller.dart';
import '../../stats_sum_shots_playground/domain/entity/game_player.dart';

class PlaygroundFilterController extends GetxController {
  final uiState = PlaygroundFilterUiState.loading.obs;
  final players = <GamePlayer>[].obs;
  final playgroundC = Get.put(StatsSumActionsPlaygroundController());

  static const _repository = StatsSumRepository();
  final _chosenMatches = Get.put(MatchPickerController()).chosenMatches;
  var _chosenIds = <String>[];
  final _tab = StatsSumController.tab;

  void init() {
    _chosenIds = _chosenMatches.ids;
    // getPlayersForFilter();
    _subscribeToMatchPicker();
  }

  void _subscribeToMatchPicker() {
    _chosenMatches.stream.debounceTime(kDebounceTime).listen(_update);
  }

  void _update(List<StatisticsMKCMatchesResponseDto> list) async {
    _chosenIds = list.ids;
    await getPlayersForFilter();
  }

  Future<void> getPlayersForFilter() async {
    if (_tab.value != StatsSumTab.shots) return;
    uiState.value = PlaygroundFilterUiState.loading;
    final dto = await _repository.getPlayersForFilter(statisticsId: _chosenIds);
    // players.value = dto.map(GamePlayerDto.toEntity).toList();
    uiState.value = PlaygroundFilterUiState.success;
  }

  List<int> _getPlayerIds(List<GamePlayer> players, List indexes) {
    return indexes.map((index) => players[index].avangardId).toList();
  }

  void updatePlayground(List indexes) {
    // playgroundC.updateHeatmap(GameActionQueryParameters(
    //   playerIds: _getPlayerIds(players, indexes),
    // ));
  }
}

enum PlaygroundFilterUiState { loading, success, error }
