import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../customization/std_colors.dart';
import '../../../../module/game/controller/game_controller.dart';
import '../../../../module/game/model/game_interface.dart';
import '../../../../module/game/model/past_game.dart';
import '../../../../widgets/team_widget.dart';
import '../../stats/stats_choose_game/stats_choose_game_page.dart';
import '../../stats/stats_controller.dart';
import '../../stats/stats_page.dart';
import 'next_game_widget.dart';

class Games extends StatelessWidget {
  const Games({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<GameController>();
    return Obx(
      () => c.isLoaded.isFalse
          ? const Center(child: CircularProgressIndicator.adaptive())
          : AutoScaleTabBarView(
              children: [
                c.past6Games.isEmpty
                    ? const _NoGames()
                    : Column(
                        children: [
                          ListView.builder(
                            padding:
                                const EdgeInsets.only(top: 20 - Indents.x / 2),
                            primary: false,
                            shrinkWrap: true,
                            itemCount: c.past6Games.length,
                            itemBuilder: (ctx, i) => _PastGame(c.past6Games[i]),
                          ),
                          if (c.past6Games.length == 6)
                            const ToIndividualStatsButton(),
                        ],
                      ),
                c.next6Games.isEmpty
                    ? const _NoGames()
                    : ListView.builder(
                        padding: const EdgeInsets.only(top: 20 - Indents.x / 2),
                        primary: false,
                        shrinkWrap: true,
                        itemCount: c.next6Games.length,
                        itemBuilder: (ctx, i) =>
                            NextGameWidget(c.next6Games[i]),
                      ),
              ],
            ),
    );
  }
}

class _PastGame extends StatelessWidget {
  final PastGame game;

  const _PastGame(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isReady = game.statisticsIsReady == true;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: StdColors.border24),
      ),
      padding: const EdgeInsets.only(top: Indents.internal),
      margin: const EdgeInsets.symmetric(vertical: Indents.x / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${DateFormat.yMd().format(game.date)}, '
            '${DateFormat.Hm().format(game.date)} | ${game.gameType}',
            style: Get.textTheme.bodySmall?.copyWith(
              height: 14 / 10,
              color: Grey.g54,
            ),
          ),
          const SizedBox(height: Indents.internal),
          const Divider(
            thickness: 1,
            height: 1,
            color: StdColors.border24,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: Indents.x),
            child: Row(
              children: [
                TeamWidget(name: game.homeTeamName),
                Text(
                  game.score?.replaceFirst('-', ':') ?? '-',
                  style: Get.textTheme.displayMedium,
                ),
                TeamWidget(name: game.awayTeamName),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: StdColors.border24,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Opacity(
                      opacity: false ? 1 : .4,
                      child: Container(
                        alignment: Alignment.center,
                        height: 36,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                          ),
                          // todo when record url available change color if have
                          color: Grey.g12,
                        ),
                        child: Text(
                          'Запись игры',
                          style: Get.textTheme.labelLarge,
                        ),
                      ),
                    ),
                  ),
                ),
                const VerticalDivider(
                  thickness: 1,
                  width: 1,
                  color: StdColors.border24,
                ),
                Expanded(
                  child: InkWell(
                    onTap: isReady
                        ? () {
                            Get.put(StatsController()).choose(game as GameInterface);

                            // Push classical way, for saving cupertino bottom bar
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const StatsPage(),
                              ),
                            );
                          }
                        : null,
                    child: Opacity(
                      opacity: isReady ? 1 : .4,
                      child: Container(
                        alignment: Alignment.center,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(8),
                          ),
                          color: StdColors.primary.withOpacity(.15),
                        ),
                        child: Text(
                          'Статистика',
                          style: Get.textTheme.labelLarge
                              ?.apply(color: StdColors.primary.shade700),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NoGames extends StatelessWidget {
  const _NoGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Нет данных о играх',
        style: Get.textTheme.displayMedium,
      ),
    );
  }
}

class ToIndividualStatsButton extends StatelessWidget {
  const ToIndividualStatsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const StatsChooseGamePage()),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Смотреть все'),
          Icon(Icons.arrow_forward_rounded, size: 16),
        ],
      ),
    );
  }
}
