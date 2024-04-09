import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/sort.dart';
import '../../stats_controller.dart';
import '../interface/table_controller.dart';
import '../model/classic_row.dart';

class StatsPlayersClassicController extends GetxController
    implements TableController {
  int? sortColumnIndex;
  late RxBool isAscend;
  var isExpanded = false.obs;

  @override
  void onInit() {
    isAscend = true.obs;
    super.onInit();
  }

  final isLoaded = false.obs;

  @override
  void getTable() => Get.find<StatsController>().getStatsPlayersClassicTable();

  late List<ClassicRow> rows;

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

  void sortByScore(int index, bool _) {
    rows.sort(
      (rowA, rowB) => Sort.objectWithValue(rowA.score, rowB.score, isAscend),
    );
    updateIndexAndDirection(index);
  }

  void sortByGoals(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.goals.value.compareTo(rowB.goals.value)
        : rowB.goals.value.compareTo(rowA.goals.value));
    updateIndexAndDirection(index);
  }

  void sortByAssists(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.assists.value.compareTo(rowB.assists.value)
        : rowB.assists.value.compareTo(rowA.assists.value));
    updateIndexAndDirection(index);
  }

  void sortByPlusMinus(int index, bool _) {
    rows.sort((rowA, rowB) =>
        Sort.objectWithValue(rowA.plusMinus, rowB.plusMinus, isAscend));
    updateIndexAndDirection(index);
  }

  void sortByPlus(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.value(rowA.plus, rowB.plus, isAscend));
    updateIndexAndDirection(index);
  }

  void sortByMinus(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.value(rowA.minus, rowB.minus, isAscend));
    updateIndexAndDirection(index);
  }

  void sortByBlockedShots(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.blockedShots.value.compareTo(rowB.blockedShots.value)
        : rowB.blockedShots.value.compareTo(rowA.blockedShots.value));
    updateIndexAndDirection(index);
  }
}
