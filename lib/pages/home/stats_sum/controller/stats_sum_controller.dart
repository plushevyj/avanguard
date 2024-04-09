import 'package:get/get.dart';

import 'stats_sum_tab.dart';

class StatsSumController extends GetxController {
  void removeFilters(_) async {
    // todo when filters for each tournament is ready, remove them on exit
  }

  static var tab = StatsSumTab.tournament.obs;

  void setTab(int index) {
    tab.value = StatsSumTab.values[index];
    print(
      '${("-" * 90)}\n'
          '${tab.value}\n'
          '${("-" * 99)}\n',
    );
  }
}
