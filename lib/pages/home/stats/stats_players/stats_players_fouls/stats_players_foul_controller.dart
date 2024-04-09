import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../stats_controller.dart';
import '../../../../../core/utils/sort.dart';
import '../interface/table_controller.dart';
import 'model/foul_row.dart';

class StatsPlayersFoulController extends GetxController implements TableController {
  int? sortColumnIndex;
  late RxBool isAscend;
  var isExpanded = false.obs;

  @override
  void onInit() {
    isAscend = true.obs;
    super.onInit();
  }

  @override
  void getTable() => Get.find<StatsController>().getStatsPlayersFoulTable();

  late List<FoulRow> rows;

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

  void sortByFoulDifference(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
      rowA.foulDifference,
      rowB.foulDifference,
      isAscend,
    ));
    updateIndexAndDirection(index);
  }

  void sortByEarnedFouls(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.earnedFouls.value.compareTo(rowB.earnedFouls.value)
        : rowB.earnedFouls.value.compareTo(rowA.earnedFouls.value));
    updateIndexAndDirection(index);
  }

  void sortByFouls(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.fouls.value.compareTo(rowB.fouls.value)
        : rowB.fouls.value.compareTo(rowA.fouls.value));
    updateIndexAndDirection(index);
  }

  void sortByFoulTime(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.foulTime.value.compareTo(rowB.foulTime.value)
        : rowB.foulTime.value.compareTo(rowA.foulTime.value));
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
}
