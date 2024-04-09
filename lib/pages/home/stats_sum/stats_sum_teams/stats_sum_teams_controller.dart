import 'package:get/get.dart';
import 'package:rxdart/transformers.dart';

import '../../../../core/constants/constants.dart';
import '../../stats/period.dart';
import '../controller/stats_sum_controller.dart';
import '../controller/stats_sum_tab.dart';
import '../repository/stats_sum_repository.dart';
import '../widgets/match_picker/match_picker_controller.dart';
import '../widgets/match_picker/model/statistics_mkc_matches_response_dto.dart';
import 'model/get_matches_info_response_dto.dart';

class StatsSumTeamsController extends GetxController {
  final matches = Rxn<GetMatchesInfoResponseDto>();
  var filter = Period.all.obs;

  final isLoaded = false.obs;
  final isFilterLoaded = false.obs;

  Future<void> init() async {
    _subscribeToMatchPicker();
  }

  void filterTap(String period) {
    filter.value = period;
    getMatches();
  }

  static const _repository = StatsSumRepository();
  final _chosenMatches = Get.put(MatchPickerController()).chosenMatches.stream;
  var _chosenIds = <String>[];
  final tab = StatsSumController.tab;

  void _subscribeToMatchPicker() {
    isFilterLoaded.value = false;
    _chosenMatches.debounceTime(kDebounceTime).listen(_getMatchesOnChange);
  }

  void _getMatchesOnChange(List<StatisticsMKCMatchesResponseDto> list) async {
    if (tab.value != StatsSumTab.teams) return;
    _chosenIds = list.ids;
    await getMatches();
    isFilterLoaded.value = true;
  }

  Future<void> getMatches() async {
    isLoaded.value = false;
    if (_chosenIds.isEmpty) return;
    matches.value = await _repository.getMatches(
      period: filter.value,
      statisticsId: _chosenIds,
    );
    isLoaded.value = true;
  }
}
