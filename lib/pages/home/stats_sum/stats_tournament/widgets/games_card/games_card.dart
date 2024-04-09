import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../customization/std_colors.dart';
import '../../../../../../widgets/std_loader.dart';
import 'games_card_controller.dart';
import 'widgets/tournament_next_game_widget.dart';
import 'widgets/tournament_past_game_widget.dart';

class GamesCard extends StatelessWidget {
  const GamesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(GamesCardController())..init();
    return Obx(
      () => switch (c.uiState.value) {
        GamesCardUiState.loading => const StdLoader(),
        GamesCardUiState.empty => const Text('Нет данных'),
        GamesCardUiState.loaded => Container(
            margin: const EdgeInsets.only(right: Indents.x),
            decoration: StdDecor.card,
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    labelColor: StdColors.primary.shade700,
                    labelStyle: Get.textTheme.titleSmall,
                    unselectedLabelColor: Grey.g54,
                    indicatorWeight: 2,
                    tabs: const [
                      Tab(child: Text('Прошедшие игры')),
                      Tab(child: Text('Будущие игры')),
                    ],
                  ),
                  const SizedBox(height: Indents.x),
                  AutoScaleTabBarView(
                    children: [
                      c.pastGames.value!.games.isEmpty
                          ? const Text('Игр еще не было')
                          : SizedBox(
                              height: 500,
                              child: ListView.builder(
                                primary: false,
                                itemCount: c.pastGames.value!.games.length,
                                itemBuilder: (ctx, i) =>
                                    TournamentPastGameWidget(
                                  c.pastGames.value!.games[i],
                                ),
                              ),
                            ),
                      c.pastGames.value!.games.isEmpty
                          ? const Text('Будущие игры ещё не определены')
                          : SizedBox(
                              height: 500,
                              child: ListView.builder(
                                primary: false,
                                itemCount: c.nextGames.value!.games.length,
                                itemBuilder: (ctx, i) =>
                                    TournamentNextGameWidget(
                                  c.nextGames.value!.games[i],
                                ),
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      },
    );
  }
}
