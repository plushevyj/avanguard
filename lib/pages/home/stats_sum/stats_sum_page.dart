import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../customization/std_colors.dart';
import '../../../widgets/my_tab_bar.dart';
import 'controller/stats_sum_controller.dart';
import 'stats_sum_actions/stats_sum_actions_page.dart';
import 'stats_sum_faceoffs/stats_sum_faceoffs_page.dart';
import 'stats_sum_goalkeepers/stats_sum_goalkeepers_page.dart';
import 'stats_sum_players/view/stats_sum_players_page.dart';
import 'stats_sum_rival/stats_sum_rival_page.dart';
import 'stats_sum_shots/stats_sum_shots_page.dart';
import 'stats_sum_teams/stats_sum_teams_page.dart';
import 'stats_tournament/stats_tournament_page.dart';

class StatsSumPage extends StatelessWidget {
  final String teamName;

  const StatsSumPage(this.teamName, {Key? key}) : super(key: key);

  static const route = '/stats_sum';

  static const _tabs = {
    'Турнир': StatsTournamentPage(),
    'Соперник': StatsSumRivalPage(),
    'Командная': StatsSumTeamsPage(),
    'Броски': StatsSumShotsPage(),
    'Действия': StatsSumActionsPage(),
    'Игроки': StatsSumPlayersPage(),
    'Вратари': StatsSumGoalkeepersPage(),
    'Вбрасывания': StatsSumFaceoffsPage(),
  };

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsSumController());
    return PopScope(
      onPopInvoked: c.removeFilters,
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
            title: const Text('Расширенная статистика'),
            titleTextStyle: Get.textTheme.displaySmall?.apply(color: Grey.g68),
            elevation: 0,
            toolbarHeight: 46,
            bottom: MyTabBar(
              _tabs.keys.toList(growable: false),
              isBottom: true,
              title: '      $teamName', // sorry for this, im so fucking tired
              onTap: c.setTab,
            ),
          ),
          body: TabBarView(children: _tabs.values.toList(growable: false)),
        ),
      ),
    );
  }
}
