import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../customization/std_colors.dart';
import '../../controller/player_stats_card_controller.dart';
import '../../model/player_stats.dart';

class PlayerStatsTile extends StatelessWidget {
  final StatisticsMKCPlayersStatItemDto player;

  const PlayerStatsTile(this.player, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        border: const Border(
          bottom: BorderSide(color: StdColors.border12),
        ),
        color: Get.find<PlayerStatsCardController>().getColor(player),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            child: Text(
              player.position.toString(),
              style: Get.textTheme.bodySmall,
            ),
          ),
          const SizedBox(width: Indents.internal / 2),
          if (player.teamLogo.isURL)
            Image.network(player.teamLogo, width: 20, height: 20),
          const SizedBox(width: Indents.x / 2),
          Text(
            '${player.lastName} ${player.firstName}',
            style: Get.textTheme.bodyLarge,
          ),
          if (player.markAsBest)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                Icons.star,
                color: StdColors.red,
                size: 12,
              ),
            ),
          const Expanded(child: SizedBox()),
          Text(
            player.value.toString(),
            style: Get.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
