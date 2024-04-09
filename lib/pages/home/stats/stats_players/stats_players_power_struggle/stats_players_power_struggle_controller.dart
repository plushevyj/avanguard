import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../stats_controller.dart';
import '../../../../../core/utils/sort.dart';
import '../interface/table_controller.dart';
import 'model/power_struggle_row.dart';

class StatsPlayersPowerStruggleController extends GetxController implements TableController {
  int? sortColumnIndex;
  late RxBool isAscend;
  var isExpanded = false.obs;

  @override
  void onInit() {
    isAscend = true.obs;
    super.onInit();
  }

  @override
  void getTable() {
    Get.find<StatsController>().getStatsPlayersPowerStruggleTable();
  }

  late List<PowerStruggleRow> rows;

  @visibleForTesting
  void updateIndexAndDirection(int index) {
    sortColumnIndex = index;
    isAscend.value = !isAscend.value;
  }

  void sortPlayersByNumbers(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.student.playerNumber.compareTo(rowB.student.playerNumber)
        : rowB.student.playerNumber.compareTo(rowA.student.playerNumber));
    updateIndexAndDirection(index);
  }

  void sortByGames(int index, bool _) {
    rows.sort((rowA, rowB) =>
        Sort.value(rowA.student.gamesCount, rowB.student.gamesCount, isAscend));
    updateIndexAndDirection(index);
  }

  void sortByHits(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.hits.value.compareTo(rowB.hits.value)
        : rowB.hits.value.compareTo(rowA.hits.value));
    updateIndexAndDirection(index);
  }

  void sortByWinBattlesPercent(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
      rowA.winBattlesPercent,
      rowB.winBattlesPercent,
      isAscend,
    ));
    updateIndexAndDirection(index);
  }

  void sortByWinBattles(int index, bool _) {
    rows.sort((rowA, rowB) =>
        isAscend.value
            ? rowA.winBattles.compareTo(rowB.winBattles)
            : rowB.winBattles.compareTo(rowA.winBattles));
    updateIndexAndDirection(index);
  }

  void sortByAllBattles(int index, bool _) {
    rows.sort((rowA, rowB) =>
        isAscend.value
            ? rowA.allBattles.compareTo(rowB.allBattles)
            : rowB.allBattles.compareTo(rowA.allBattles));
    updateIndexAndDirection(index);
  }
}
