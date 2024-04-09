import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../stats_controller.dart';
import '../../../../../core/utils/sort.dart';
import '../interface/table_controller.dart';
import 'model/time_row.dart';

class StatsPlayersTimeController extends GetxController implements TableController {
  int? sortColumnIndex;
  late RxBool isAscend;
  var isExpanded = false.obs;

  @override
  void onInit() {
    isAscend = true.obs;
    super.onInit();
  }

  @override
  void getTable() => Get.find<StatsController>().getStatsPlayersTimeTable();

  late List<TimeRow> rows;

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

  void sortByTime(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.timeOnIce.value.compareTo(rowB.timeOnIce.value)
        : rowB.timeOnIce.value.compareTo(rowA.timeOnIce.value));
    updateIndexAndDirection(index);
  }

  void sortByShiftsDuration(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.shifts.compareTo(rowB.shifts)
        : rowB.shifts.compareTo(rowA.shifts));
    updateIndexAndDirection(index);
  }

  void sortByAverageShiftsDuration(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
      rowA.averageShiftDuration,
      rowB.averageShiftDuration,
      isAscend,
    ));
    updateIndexAndDirection(index);
  }

  void sortByReplayedShifts(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.replayedShifts.value.compareTo(rowB.replayedShifts.value)
        : rowB.replayedShifts.value.compareTo(rowA.replayedShifts.value));
    updateIndexAndDirection(index);
  }

  void sortByReplayedShiftsPercent(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
      rowA.replayedShiftsPercent,
      rowB.replayedShiftsPercent,
      isAscend,
    ));
    updateIndexAndDirection(index);
  }
}
