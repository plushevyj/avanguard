import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../stats_controller.dart';
import '../../../../../core/utils/sort.dart';
import '../interface/table_controller.dart';
import 'model/corsi_row.dart';

class StatsPlayersCorsiController extends GetxController implements TableController {
  int? sortColumnIndex;
  late RxBool isAscend;
  var isExpanded = false.obs;

  @override
  void onInit() {
    isAscend = true.obs;
    super.onInit();
  }

  @override
  void getTable() => Get.find<StatsController>().getStatsPlayersCorsiTable();

  late List<CorsiRow> rows;

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

  void sortByCorsiForPercent(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
          rowA.corsiForPercent,
          rowB.corsiForPercent,
          isAscend,
        ));
    updateIndexAndDirection(index);
  }

  void sortByCorsiFor(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.value(
          rowA.corsiFor,
          rowB.corsiFor,
          isAscend,
        ));
    updateIndexAndDirection(index);
  }

  void sortByCorsiAgainst(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.value(
          rowA.corsiAgainst,
          rowB.corsiAgainst,
          isAscend,
        ));
    updateIndexAndDirection(index);
  }

  void sortByCorsiForOZPercent(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.objectWithValue(
          rowA.corsiForOZPercent,
          rowB.corsiForPercent,
          isAscend,
        ));
    updateIndexAndDirection(index);
  }

  void sortByCorsiForOZ(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.value(
          rowA.corsiForOZ,
          rowB.corsiForOZ,
          isAscend,
        ));
    updateIndexAndDirection(index);
  }

  void sortByCorsiAgainstOZ(int index, bool _) {
    rows.sort((rowA, rowB) => Sort.value(
          rowA.corsiAgainstOZ,
          rowB.corsiAgainstOZ,
          isAscend,
        ));
    updateIndexAndDirection(index);
  }
}
