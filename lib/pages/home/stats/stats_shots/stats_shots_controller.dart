import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/multi_select/my_gf_multi_select.dart';

class StatsShotsController extends GetxController {
  late RxList<PlaygroundFilter> filters;
  final bucket = PageStorageBucket();
  final playersFilterController = MultiSelectController();

  @override
  void onInit() {
    filters = PlaygroundFilter.values.obs;
    super.onInit();
  }

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

enum PlaygroundFilter {
  goal,
  shotOnGoal,
  blockedShot,
  shotWide,
  unsuccessfulAttempt,
}
