import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rxdart/transformers.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../widgets/multi_select/my_gf_multi_select.dart';
import '../../../stats/stats_controller.dart';
import '../../../stats/stats_shots/stats_shots_controller.dart';
import '../../controller/stats_sum_controller.dart';
import '../../controller/stats_sum_tab.dart';
import '../../widgets/match_picker/match_picker_controller.dart';
import '../../widgets/match_picker/model/statistics_mkc_matches_response_dto.dart';

class StatsSumShotsController extends GetxController {
  late RxList<PlaygroundFilter> filters;
  final bucket = PageStorageBucket();
  final playersFilterController = MultiSelectController();
  final c = Get.put(StatsController());

  var tab = StatsSumController.tab;

  @override
  void onInit() {
    filters = PlaygroundFilter.values.obs;

    _subscribeToMatchPicker();
    super.onInit();
  }

  void init() {
    c.getShotsCard();
  }

  void _subscribeToMatchPicker() {
    _chosenMatches.debounceTime(kDebounceTime).listen(_shotsOnChange);
  }

  void _shotsOnChange(List<StatisticsMKCMatchesResponseDto> matches) async {
    if (tab.value != StatsSumTab.shots) return;
    print(
      '${("-" * 90)}\n'
          'statrt}\n'
          '${("-" * 99)}\n',
    );
    c.getShotsCard();
  }

  // при выборе матчей запрос на получение статистики

  final _chosenMatches = Get.put(MatchPickerController()).chosenMatches.stream;

  bool get allFiltersSelected {
    return filters.length == PlaygroundFilter.values.length;
  }

  bool isSelected(PlaygroundFilter filter) {
    return filters.contains(filter) && !allFiltersSelected;
  }

  void filterTap(PlaygroundFilter filter) {
    if (allFiltersSelected) filters.clear();
    filters.contains(filter) ? filters.remove(filter) : filters.add(filter);
    if (filters.isEmpty) selectAllFilters();
  }

  void allTap(bool _) {
    filters.clear();
    selectAllFilters();
  }

  void selectAllFilters() => filters.addAll(PlaygroundFilter.values);
}
