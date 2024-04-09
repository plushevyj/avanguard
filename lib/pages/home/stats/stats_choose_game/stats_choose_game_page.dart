import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';

import '../../../../customization/std_colors.dart';
import '../../../../module/game/model/game_interface.dart';
import '../../../../module/game/model/past_game.dart';
import '../../../../widgets/buttons/filters_button.dart';
import '../stats_controller.dart';
import '../stats_page.dart';
import 'stats_choose_game_controller.dart';
import 'stats_choose_game_filters/stats_choose_game_filters_page.dart';

class StatsChooseGamePage extends StatelessWidget {
  const StatsChooseGamePage({Key? key}) : super(key: key);

  static const route = '/stats_choose_game';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Выберите игру', style: Get.textTheme.displayMedium),
            const SizedBox(height: Indents.x),
            FiltersButton(
              onTap: () => Get.to(
                () => const StatsChooseGameFiltersPage(),
              ),
            ),
          ],
        ),
      ),
      body: const _GamesList(),
    );
  }
}

class _GamesList extends StatelessWidget {
  const _GamesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsChooseGameController())..init();
    return RefreshIndicator(
      onRefresh: () => Future.sync(c.pagingController.refresh),
      child: PagedListView<int, PastGame>(
        padding: const EdgeInsets.only(
          left: Indents.x,
          top: Indents.x,
          right: Indents.x,
        ),
        pagingController: c.pagingController,
        builderDelegate: PagedChildBuilderDelegate(
          noItemsFoundIndicatorBuilder: (_) => Center(
            child: Text('Игры не найдены', style: Get.textTheme.headlineMedium),
          ),
          itemBuilder: (_, game, i) => _GameWidget(game),
        ),
      ),
    );
  }
}

class _GameWidget extends StatelessWidget {
  final PastGame game;

  const _GameWidget(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isReady = game.statisticsIsReady != null && game.statisticsIsReady!;
    return InkWell(
      onTap: isReady
          ? () {
              Get.put(StatsController()).choose(game as GameInterface);

              // Push classical way, for saving cupertino bottom bar
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const StatsPage()),
              );
            }
          : null,
      child: Card(
        color: isReady ? null : StdColors.border12,
        margin: const EdgeInsets.only(bottom: Indents.x),
        child: Padding(
          padding: const EdgeInsets.all(Indents.internal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${DateFormat.yMd('ru').format(game.date)}, '
                '${DateFormat.Hm('ru').format(game.date)} | '
                '${game.gameType}',
                style: Get.textTheme.bodySmall?.apply(color: Grey.g54),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '${game.homeTeamName} - ${game.awayTeamName}',
                    ),
                  ),
                  Text(game.score ?? '-'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
