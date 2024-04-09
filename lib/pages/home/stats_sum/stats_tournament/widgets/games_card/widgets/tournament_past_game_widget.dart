import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../../../customization/std_colors.dart';
import '../../../../../../../widgets/buttons/button.dart';
import '../model/tournament_past_games.dart';
import 'tournament_past_game_team_events_widget.dart';

class TournamentPastGameWidget extends StatelessWidget {
  final MKCTablePagePastGameItemDto game;

  const TournamentPastGameWidget(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Indents.x),
      padding: const EdgeInsets.symmetric(vertical: Indents.x),
      decoration: StdDecor.bordered,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Indents.x),
              child: GameScoreWidget(game: game),
            ),
          ),
          const SizedBox(height: Indents.x),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Indents.x),
            child: GameButtonsRow(game),
          ),
          const Divider(),
          TournamentPastGameTeamEventsWidget(
            game.goals.homeTeam,
            game.homeTeamLogo,
          ),
          const Divider(),
          TournamentPastGameTeamEventsWidget(
            game.goals.awayTeam,
            game.awayTeamLogo,
          ),
        ],
      ),
    );
  }
}

class GameButtonsRow extends StatelessWidget {
  final MKCTablePagePastGameItemDto game;

  const GameButtonsRow(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Button(
            text: 'Статистика',
            buttonColor: ButtonColor.secondary,
            onTap: null,
            // will
            // game.statisticId != null
            // ?
            // () {
            // Get.put(StatsController()).choose(game as GameInterface);
            //
            // Push classical way, for saving cupertino bottom bar
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (_) => const StatsPage(),
            //   ),
            // );
            // }
          ),
        ),
        Gap(8),
        Expanded(
          child: Button(
            text: 'Запись игры',
            onTap: null,
            buttonColor: ButtonColor.third,
          ),
        ),
      ],
    );
  }
}

class GameScoreWidget extends StatelessWidget {
  final MKCTablePagePastGameItemDto game;

  const GameScoreWidget({required this.game, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 64,
          child: Column(
            children: [
              SizedBox(
                width: 48,
                height: 42,
                child: Image.network(game.homeTeamLogo),
              ),
              Text(game.homeTeamName, textAlign: TextAlign.center),
            ],
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Text(
                  game.homeScore.toString(),
                  style: Get.textTheme.displayLarge?.apply(
                    color: game.homeScore >= game.awayScore ? null : Grey.g68,
                  ),
                ),
                Text(
                  ' - ',
                  style: Get.textTheme.displayLarge?.apply(
                    color: Grey.g68,
                  ),
                ),
                Text(
                  game.awayScore.toString(),
                  style: Get.textTheme.displayLarge?.apply(
                    color: game.homeScore < game.awayScore ? Grey.g68 : null,
                  ),
                ),
              ],
            ),
            Text(
              game.halfsView,
              style: Get.textTheme.titleMedium,
            ),
          ],
        ).paddingSymmetric(horizontal: Indents.y),
        SizedBox(
          width: 64,
          child: Column(
            children: [
              SizedBox(
                width: 48,
                height: 42,
                child: Image.network(game.awayTeamLogo),
              ),
              Text(game.awayTeamName, textAlign: TextAlign.center),
            ],
          ),
        ),
      ],
    );
  }
}
