import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/sort.dart';
import '../../stats_controller.dart';
import '../interface/table_controller.dart';
import 'model/puck_battle_row.dart';

class StatsPlayersPuckBattleController extends GetxController implements TableController {
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
    Get.find<StatsController>().getStatsPlayersPuckBattleTable();
  }

  late List<PuckBattleRow> rows;

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

  void sortByTakeaways(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.takeaways.value.compareTo(rowB.takeaways.value)
        : rowB.takeaways.value.compareTo(rowA.takeaways.value));
    updateIndexAndDirection(index);
  }

  void sortByTakeawaysOZ(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.takeawaysOZ.value.compareTo(rowB.takeawaysOZ.value)
        : rowB.takeawaysOZ.value.compareTo(rowA.takeawaysOZ.value));
    updateIndexAndDirection(index);
  }

  void sortByTakeawaysDZ(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.takeawaysDZ.value.compareTo(rowB.takeawaysDZ.value)
        : rowB.takeawaysDZ.value.compareTo(rowA.takeawaysDZ.value));
    updateIndexAndDirection(index);
  }

  void sortByGiveaways(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.giveaways.value.compareTo(rowB.giveaways.value)
        : rowB.giveaways.value.compareTo(rowA.giveaways.value));
    updateIndexAndDirection(index);
  }

  void sortByGiveawaysOZ(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.giveawaysOZ.value.compareTo(rowB.giveawaysOZ.value)
        : rowB.giveawaysOZ.value.compareTo(rowA.giveawaysOZ.value));
    updateIndexAndDirection(index);
  }

  void sortByGiveawaysDZ(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.giveawaysDZ.value.compareTo(rowB.giveawaysDZ.value)
        : rowB.giveawaysDZ.value.compareTo(rowA.giveawaysDZ.value));
    updateIndexAndDirection(index);
  }

  void sortByTakesOZ(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.takesOZ.value.compareTo(rowB.takesOZ.value)
        : rowB.takesOZ.value.compareTo(rowA.takesOZ.value));
    updateIndexAndDirection(index);
  }

  void sortByTakesDZ(int index, bool _) {
    rows.sort((rowA, rowB) => isAscend.value
        ? rowA.takesDZ.value.compareTo(rowB.takesDZ.value)
        : rowB.takesDZ.value.compareTo(rowA.takesDZ.value));
    updateIndexAndDirection(index);
  }
}
