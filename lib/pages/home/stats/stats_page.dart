import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../customization/std_colors.dart';
import '../../../widgets/my_tab_bar.dart';
import 'stats_controller.dart';
import 'stats_faceoffs/stats_faceoffs_page.dart';
import 'stats_goalkeepers/stats_goalkeepers_page.dart';
import 'stats_overview/stats_overview_page.dart';
import 'stats_players/stats_players_page.dart';
import 'stats_shifts/stats_shifts_page.dart';
import 'stats_shots/stats_shots_page.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({Key? key}) : super(key: key);

  static const route = '/stats';

  static const _tabs = {
    'Обзор': StatsOverviewPage(),
    'Броски': StatsShotsPage(),
    'Игроки': StatsPlayersPage(),
    'Вратари': StatsGoalkeepersPage(),
    'Смены': StatsShiftsPage(),
    'Вбрасывания': StatsFaceoffsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: Get.find<StatsController>().removeFilters,
      child: DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: Navigator.of(context).pop,
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Grey.g68,
                size: 16,
              ),
            ),
            title: const Text('Статистика по игре'),
            titleTextStyle: Get.textTheme.displaySmall?.apply(color: Grey.g68),
            elevation: 0,
            toolbarHeight: 46,
            bottom: MyTabBar(_tabs.keys.toList(), isBottom: true),
          ),
          body: TabBarView(children: _tabs.values.toList()),
        ),
      ),
    );
  }
}
