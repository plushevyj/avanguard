import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../../../core/utils/time.dart';
import '../../../../../../../customization/std_colors.dart';
import '../model/tournament_next_games.dart';

class TournamentNextGameWidget extends StatelessWidget {
  final MKCTablePageNextGameItemDto game;

  const TournamentNextGameWidget(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
      left: Indents.x,
      right: Indents.x,
      bottom: Indents.x,
    ),
      decoration: StdDecor.bordered,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Indents.y),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${game.date.asMddString}${game.timeView}',
                  style: Get.textTheme.titleMedium?.apply(color: Grey.g54),
                ),
              ],
            ),
          ),
          const Divider(height: 0, color: StdColors.border24),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.network(game.homeTeamLogo, width: 40, height: 40),
                        const Gap(4),
                        Text(
                          game.homeTeamName,
                          style: Get.textTheme.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                const VerticalDivider(endIndent: 0, indent: 0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.network(game.awayTeamLogo, width: 40, height: 40),
                        const Gap(4),
                        Text(
                          game.awayTeamName,
                          style: Get.textTheme.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
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
