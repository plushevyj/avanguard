import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/buttons/filters_button.dart';
import '../../../../widgets/my_tab_bar.dart';
import 'controller/stats_players_controller.dart';
import 'stats_players_classic/stats_players_classic_page.dart';
import 'stats_players_corsi/stats_players_corsi_page.dart';
import 'stats_players_deking/stats_players_deking_page.dart';
import 'stats_players_filters/stats_players_filters_page.dart';
import 'stats_players_fouls/stats_players_foul_page.dart';
import 'stats_players_passes/stats_players_passes_page.dart';
import 'stats_players_power_struggle/stats_players_power_struggle_page.dart';
import 'stats_players_puck_battle/stats_players_puck_battle_page.dart';
import 'stats_players_shots/stats_players_shots_page.dart';
import 'stats_players_time/stats_players_time_page.dart';

class StatsPlayersPage extends StatelessWidget {
  const StatsPlayersPage({Key? key}) : super(key: key);

  static const route = '/stats_players';

  static const _tabs = {
    'Классическая': StatsPlayersClassicPage(),
    'Время': StatsPlayersTimePage(),
    'Броски': StatsPlayersShotsPage(),
    'Обводки': StatsPlayersDekingPage(),
    'Удаления': StatsPlayersFoulPage(),
    'Обостряющие передачи': StatsPlayersPassesPage(),
    'Борьба за шайбу': StatsPlayersPuckBattlePage(),
    'Силовая борьба': StatsPlayersPowerStrugglePage(),
    'Corsi': StatsPlayersCorsiPage(),
  };

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsPlayersController());
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 0,
          toolbarHeight: 70,
          title: FiltersButton(
            onTap: () => Get.to(() => const StatsPlayersFiltersPage()),
          ),
          bottom: MyTabBar(
            _tabs.keys.toList(),
            isBottom: true,
            onTap: c.changeIndex,
          ),
        ),
        body: TabBarView(children: _tabs.values.toList()),
      ),
    );
  }
}
