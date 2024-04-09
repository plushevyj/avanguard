import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../customization/std_colors.dart';
import '../../../../module/game/model/game_interface.dart';
import '../../../../widgets/buttons/filters_button.dart';
import '../../stats/stats_controller.dart';
import '../../stats/stats_page.dart';
import '../stats_sum_page.dart';
import 'controller/stats_sum_choose_controller.dart';
import 'model/tournament.dart';
import 'stats_choose_game_filters/stats_sum_choose_filters_page.dart';
import 'widgets/indicator_diagram.dart';

class StatsSumChoosePage extends StatelessWidget {
  const StatsSumChoosePage({Key? key}) : super(key: key);

  static const route = '/stats_choose_game';

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsSumChooseController())..start();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Статистика', style: Get.textTheme.displayMedium),
            const SizedBox(height: Indents.x),
            FiltersButton(
              onTap: () => Get.to(() => const StatsSumChooseFiltersPage()),
            ),
          ],
        ),
      ),
      body: Obx(
        () => c.isLoaded.isFalse
            ? const Center(child: CircularProgressIndicator.adaptive())
            : c.tournaments.isEmpty
                ? Center(
                    child: Text(
                      'Нет данных по играм',
                      style: Get.textTheme.displayMedium,
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.only(
                      left: Indents.x,
                      top: Indents.x,
                      right: Indents.x,
                    ),
                    itemCount: c.tournaments.length,
                    separatorBuilder: (_, i) =>
                        const SizedBox(height: Indents.y),
                    itemBuilder: (ctx, i) => TournamentCard(c.tournaments[i]),
                  ),
      ),
    );
  }
}

class TournamentCard extends StatelessWidget {
  final Tournament tournament;

  const TournamentCard(this.tournament, {Key? key}) : super(key: key);

  static final _caption = Get.textTheme.bodySmall?.apply(color: Grey.g68);
  static final _h3 = Get.textTheme.displaySmall?.apply(color: Grey.g68);

  @override
  Widget build(BuildContext context) {
    final top3 = tournament.againstTopThree == 0
        ? '-'
        : tournament.againstTopThree.toString();
    return Container(
      padding: const EdgeInsets.only(
        left: Indents.y,
        top: Indents.y,
        right: Indents.y,
      ),
      decoration: StdDecor.card,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(tournament.teamName, style: Get.textTheme.displaySmall),
              _RankWidget(tournament.rank),
            ],
          ),
          const SizedBox(height: Indents.internal),
          Text(tournament.tournamentName),
          const SizedBox(height: Indents.y),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('Очки: ', style: _caption),
              Text(
                '${tournament.points} (${tournament.potentialPoints}%)',
                style: _h3,
              ),
              const SizedBox(width: Indents.y),
              Text('Топ-3 %: ', style: _caption),
              Text('$top3%', style: _h3),
            ],
          ),
          const SizedBox(height: Indents.y),
          ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemCount:
                tournament.games.length > 4 ? 4 : tournament.games.length,
            separatorBuilder: (ctx, i) => const SizedBox(height: 5),
            itemBuilder: (ctx, i) => _GameRow(tournament.games[i]),
          ),
          if (tournament.games.isEmpty) const Text('Первенство еще не стартовало.'),
          TextButton(
            style: TextButton.styleFrom(
              // minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {
              Get.put(StatsController());
              StatsController.isSum = true;
              Get.find<StatsSumChooseController>().chooseTournament(tournament);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => StatsSumPage(tournament.teamName),
                ),
              );
            },
            child: const Row(
              children: [
                Text('К расширенной статистике'),
                Icon(Icons.arrow_forward_rounded, size: 16),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _RankWidget extends StatelessWidget {
  final int rank;

  const _RankWidget(this.rank, {Key? key})
      : isNo1 = rank == 1,
        super(key: key);

  final bool isNo1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: StdColors.primary),
        borderRadius: BorderRadius.circular(100),
        color: isNo1 ? StdColors.primary : null,
      ),
      child: Row(
        children: [
          if (isNo1) ...[
            const Icon(
              Icons.emoji_events_outlined,
              color: Colors.white,
              size: 16,
            ),
            const SizedBox(width: 4),
          ],
          Text(
            '$rank место',
            style: Get.textTheme.labelLarge?.apply(
              color: isNo1 ? Colors.white : StdColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}

class _GameRow extends StatelessWidget {
  final Game game;

  const _GameRow(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        SizedBox(
          width: 56,
          child: Text(
            DateFormat('dd.MM.yy').format(game.date),
            style: const TextStyle(color: Grey.g54),
          ),
        ),
        const SizedBox(width: Indents.x),
        Expanded(child: Text(game.opponent, style: Get.textTheme.labelLarge)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IndicatorDiagram(game.resultDiagram, diameter: 12),
            const SizedBox(width: 4),
            SizedBox(
              width: 20,
              child: Center(
                child: Text(
                  game.homeScore.toString(),
                  style: Get.textTheme.displaySmall?.apply(
                    color: game.homeScore >= game.awayScore ? null : Grey.g54,
                  ),
                ),
              ),
            ),
            Text(
              ' : ',
              style: Get.textTheme.displaySmall?.apply(color: Grey.g54),
            ),
            SizedBox(
              width: 20,
              child: Center(
                child: Text(
                  game.awayScore.toString(),
                  style: Get.textTheme.displaySmall?.apply(
                    color: game.homeScore <= game.awayScore ? null : Grey.g54,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: game.statisticId == null
                  ? const SizedBox(width: Indents.x)
                  : InkWell(
                      onTap: () {
                        Get.put(StatsController())
                            .choose(game as GameInterface);
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const StatsPage()),
                        );
                      },
                      child: const Icon(
                        Icons.leaderboard,
                        color: StdColors.primary,
                        size: 16,
                      ),
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
