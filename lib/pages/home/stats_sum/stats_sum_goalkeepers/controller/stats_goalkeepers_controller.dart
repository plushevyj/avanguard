import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/constants/constants.dart';
import '../../../stats/stats_goalkeepers/model/goalkeeper_stats.dart';
import '../../../stats/stats_goalkeepers/repository/stats_goalkeeper_repository.dart';
import '../../controller/stats_sum_controller.dart';
import '../../controller/stats_sum_tab.dart';
import '../../widgets/match_picker/match_picker_controller.dart';
import '../../widgets/match_picker/model/statistics_mkc_matches_response_dto.dart';

class StatsSumGoalkeepersController extends GetxController {
  static const _repository = StatsGoalkeeperRepository();

  final stats = Rxn<GoalkeeperStats>();
  final isLoaded = false.obs;
  final isGridLoaded = false.obs;

  Future<void> getStats() async {
    if (_chosenIds.isEmpty) return;
    isLoaded.value = false;
    isGridLoaded.value = false;
    stats.value = await _repository.getStats(_chosenIds);
    isLoaded.value = true;
    isGridLoaded.value = stats.value?.topStats != null;
  }

  void init() async {
    _subscribeToMatchPicker();
  }

  final _chosenMatches = Get.put(MatchPickerController()).chosenMatches;
  var _chosenIds = <String>[];
  final tab = StatsSumController.tab;

  Future<void> _subscribeToMatchPicker() async {
    _chosenIds = _chosenMatches.ids;
    await getStats();
    _chosenMatches.stream
        .debounceTime(kDebounceTime)
        .listen(_getMatchesOnChange);
  }

  Future<void> _getMatchesOnChange(
    List<StatisticsMKCMatchesResponseDto> list,
  ) async {
    if (tab.value != StatsSumTab.goalkeepers) return;
    _chosenIds = list.ids;
    await getStats();
  }
}
