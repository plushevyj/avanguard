import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../module/game/model/game_type.dart';
import '../../../../../module/game/model/result_type.dart';
import '../../../../../module/game/repository/game_repository_mob.dart';
import '../stats_choose_game_controller.dart';

class StatsChooseGameFiltersController extends GetxController {

  var dateRange = <DateTime?>[
    // DateTime.now(),
    // DateTime.now(),
  ].obs;

  var currentGameType = GameType.gameLabel.obs;
  var currentResultType = ResultType.winLabel.obs;

  void saveFilters() {
    if (currentGameType.value.isNotEmpty) {
      GameRepositoryMob.gameType = GameType.map[currentGameType.value]!;
    }
    if (currentResultType.value.isNotEmpty) {
      GameRepositoryMob.resultType = ResultType.map[currentResultType.value]!;
    }
    if (dateRange.isNotEmpty) {
      GameRepositoryMob.from = dateRange.first!.millisecondsSinceEpoch;
      GameRepositoryMob.to = dateRange.last!.millisecondsSinceEpoch;
    }
    refreshGames();
  }

  void setGameType(String gameType) => currentGameType.value = gameType;

  void setResultType(String resultType) => currentResultType.value = resultType;

  void refreshGames() =>
      Get.find<StatsChooseGameController>().pagingController.refresh();

  Future<void> chooseDate() async {
    showCalendarDatePicker2Dialog(
      context: Get.context!,
      config: CalendarDatePicker2WithActionButtonsConfig(
        calendarType: CalendarDatePicker2Type.range,
      ),
      dialogSize: const Size(325, 400),
      value: dateRange,
      borderRadius: BorderRadius.circular(15),
    ).then((value) {
      if (value == null || value.isEmpty) return;
      dateRange.value = [value.first, value.last];
    });
  }

  void chooseStartDate() {
    CupertinoDatePicker(
      initialDateTime: DateTime.now().subtract(const Duration(days: 365)),
      mode: CupertinoDatePickerMode.date,
      use24hFormat: true,
      showDayOfWeek: true,
      onDateTimeChanged: (DateTime newDate) {
        // setState(() => date = newDate);
      },
    );
  }

  void reset() {
    //    GameRepositoryMob.gameType = GameRepositoryMob.resultType = null;
    GameRepositoryMob.gameType = GameType.game;
    GameRepositoryMob.resultType = ResultType.win;
    GameRepositoryMob.from = DateTime(2010).millisecondsSinceEpoch;
    GameRepositoryMob.to = DateTime.now().millisecondsSinceEpoch;
    currentGameType.value = GameType.gameLabel;
    currentResultType.value = ResultType.winLabel;
    dateRange.clear();
  }
}
