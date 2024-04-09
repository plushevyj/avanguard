import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/constants/constants.dart';
import '../../../stats_sum/controller/stats_sum_controller.dart';
import '../../../stats_sum/controller/stats_sum_tab.dart';
import '../../../stats_sum/widgets/match_picker/match_picker_controller.dart';
import '../../../stats_sum/widgets/match_picker/model/statistics_mkc_matches_response_dto.dart';
import '../interface/table_controller.dart';
import '../stats_players_classic/stats_players_classic_controller.dart';
import '../stats_players_corsi/stats_players_corsi_controller.dart';
import '../stats_players_deking/stats_players_deking_controller.dart';
import '../stats_players_fouls/stats_players_foul_controller.dart';
import '../stats_players_passes/stats_players_passes_controller.dart';
import '../stats_players_power_struggle/stats_players_power_struggle_controller.dart';
import '../stats_players_puck_battle/stats_players_puck_battle_controller.dart';
import '../stats_players_shots/stats_players_shots_controller.dart';
import '../stats_players_time/stats_players_time_controller.dart';

class StatsPlayersController extends GetxController {
  int _index = 0;

  void changeIndex(int index) => _index = index;

  @override
  void onInit() {
    _subscribeToMatchPicker();
    super.onInit();
  }

  final _chosenMatches = Get.put(MatchPickerController()).chosenMatches;
  final _tab = StatsSumController.tab;

  Future<void> _subscribeToMatchPicker() async => _chosenMatches.stream
      .debounceTime(kDebounceTime)
      .listen(_getMatchesOnChange);

  Future<void> _getMatchesOnChange(
    List<StatisticsMKCMatchesResponseDto> list,
  ) async {
    if (_tab.value != StatsSumTab.players || list.ids.isEmpty) return;
    updateTable();
  }

  final List<TableController> _controllers = [
    StatsPlayersClassicController(),
    StatsPlayersTimeController(),
    StatsPlayersShotsController(),
    StatsPlayersDekingController(),
    StatsPlayersFoulController(),
    StatsPlayersPassesController(),
    StatsPlayersPuckBattleController(),
    StatsPlayersPowerStruggleController(),
    StatsPlayersCorsiController(),
  ];

  void updateTable() => _controllers[_index].getTable();
}
