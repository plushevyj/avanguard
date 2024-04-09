import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../stats_controller.dart';
import '../../../../../core/utils/sort.dart';
import '../interface/table_controller.dart';
import 'model/deking_row.dart';

class StatsPlayersDekingController extends GetxController implements TableController {
  int? sortColumnIndex;
  late RxBool isAscend;
  var isExpanded = false.obs;

  @override
  void onInit() {
    isAscend = true.obs;
    super.onInit();
  }

  @override
  void getTable() => Get.find<StatsController>().getStatsPlayersDekingTable();

  late List<DekingRow> rows;

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

  void sortByPlayerDekingAttempts(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.playerDekingAttempts.value
            .compareTo(rowB.playerDekingAttempts.value)
        : rowB.playerDekingAttempts.value
            .compareTo(rowA.playerDekingAttempts.value));
    updateIndexAndDirection(index);
  }

  void sortByDekings(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.dekings.value.compareTo(rowB.dekings.value)
        : rowB.dekings.value.compareTo(rowA.dekings.value));
    updateIndexAndDirection(index);
  }

  void sortBySuccessfulDekings(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
          rowA.successfulDekings,
          rowB.successfulDekings,
          isAscend,
        ));
    updateIndexAndDirection(index);
  }

  void sortByUnsuccessfulDekings(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
          rowA.unsuccessfulDekings,
          rowB.unsuccessfulDekings,
          isAscend,
        ));
    updateIndexAndDirection(index);
  }

  void sortByDekingOnPlayerAttempts(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.dekingOnPlayerAttempts.compareTo(rowB.dekingOnPlayerAttempts)
        : rowB.dekingOnPlayerAttempts.compareTo(rowA.dekingOnPlayerAttempts));
    updateIndexAndDirection(index);
  }

  void sortBySavedDekings(int index, bool _) {
    rows.sort((rowA, rowB) {
      return Sort.objectWithValue(
        rowA.savedDekings,
        rowB.savedDekings,
        isAscend,
      );
    });
    updateIndexAndDirection(index);
  }
}
