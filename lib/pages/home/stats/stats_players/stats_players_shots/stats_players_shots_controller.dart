import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../stats_controller.dart';
import '../../../../../core/utils/sort.dart';
import '../interface/table_controller.dart';
import 'model/shots_row.dart';

class StatsPlayersShotsController extends GetxController implements TableController {
  int? sortColumnIndex;
  late RxBool isAscend;
  var isExpanded = false.obs;

  @override
  void onInit() {
    isAscend = true.obs;
    super.onInit();
  }

  @override
  void getTable() => Get.find<StatsController>().getStatsPlayersShotsTable();

  late List<ShotsRow> rows;

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

  void sortByGoals(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.goals.value.compareTo(rowB.goals.value)
        : rowB.goals.value.compareTo(rowA.goals.value));
    updateIndexAndDirection(index);
  }

  void sortRealizationPercent(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
          rowA.shotsRealization,
          rowB.shotsRealization,
          isAscend,
        ));
    updateIndexAndDirection(index);
  }

  void sortByShots(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.shots.value.compareTo(rowB.shots.value)
        : rowB.shots.value.compareTo(rowA.shots.value));
    updateIndexAndDirection(index);
  }

  void sortByShotsOnGoal(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.shotsOnGoal.value.compareTo(rowB.shotsOnGoal.value)
        : rowB.shotsOnGoal.value.compareTo(rowA.shotsOnGoal.value));
    updateIndexAndDirection(index);
  }

  void sortShotsAccuracy(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
          rowA.shotsAccuracy,
          rowB.shotsAccuracy,
          isAscend,
        ));
    updateIndexAndDirection(index);
  }

  void sortUnsuccessfulShotAttempts(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.unsuccessfulShotAttempts.value
            .compareTo(rowB.unsuccessfulShotAttempts.value)
        : rowB.unsuccessfulShotAttempts.value
            .compareTo(rowA.unsuccessfulShotAttempts.value));
    updateIndexAndDirection(index);
  }
}
