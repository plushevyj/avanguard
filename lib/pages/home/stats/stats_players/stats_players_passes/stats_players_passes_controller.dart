import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../stats_controller.dart';
import '../../../../../core/utils/sort.dart';
import '../interface/table_controller.dart';
import 'model/passes_row.dart';

class StatsPlayersPassesController extends GetxController implements TableController {
  int? sortColumnIndex;
  late RxBool isAscend;
  var isExpanded = false.obs;

  @override
  void onInit() {
    isAscend = true.obs;
    super.onInit();
  }

  @override
  void getTable() => Get.find<StatsController>().getStatsPlayersPassesTable();

  late List<PassesRow> rows;

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

  void sortByAccuratePasses(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.accuratePasses.value.compareTo(rowB.accuratePasses.value)
        : rowB.accuratePasses.value.compareTo(rowA.accuratePasses.value));
    updateIndexAndDirection(index);
  }

  void sortByPassesCount(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.passesCount.value.compareTo(rowB.passesCount.value)
        : rowB.passesCount.value.compareTo(rowA.passesCount.value));
    updateIndexAndDirection(index);
  }

  void sortByAccuratePassesPercent(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
      rowA.accuratePassesPercent,
      rowB.accuratePassesPercent,
      isAscend,
    ));
    updateIndexAndDirection(index);
  }

  void sortByDangerousPassesTaken(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.dangerousPassesTaken.value
            .compareTo(rowB.dangerousPassesTaken.value)
        : rowB.dangerousPassesTaken.value
            .compareTo(rowA.dangerousPassesTaken.value));
    updateIndexAndDirection(index);
  }

  void sortByAccurateOZPasses(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.accurateOZPasses.value.compareTo(rowB.accurateOZPasses.value)
        : rowB.accurateOZPasses.value.compareTo(rowA.accurateOZPasses.value));
    updateIndexAndDirection(index);
  }

  void sortByOZPassesCount(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.OZPassesCount.value.compareTo(rowB.OZPassesCount.value)
        : rowB.OZPassesCount.value.compareTo(rowA.OZPassesCount.value));
    updateIndexAndDirection(index);
  }

  void sortByAccurateOZPassesPercent(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
      rowA.accurateOZPassesPercent,
      rowB.accurateOZPassesPercent,
      isAscend,
    ));
    updateIndexAndDirection(index);
  }

  void sortByDangerousOZPassesTaken(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.dangerousOZPassesTaken.value
            .compareTo(rowB.dangerousOZPassesTaken.value)
        : rowB.dangerousOZPassesTaken.value
            .compareTo(rowA.dangerousOZPassesTaken.value));
    updateIndexAndDirection(index);
  }
}
