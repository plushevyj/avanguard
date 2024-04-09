import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../customization/std_colors.dart';
import '../../model/player_stats.dart';

class BestPlayerWidget extends StatelessWidget {
  final StatisticsMKCPlayersStatItemDto player;

  const BestPlayerWidget(this.player, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Indents.internal),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Grey.g12,
      ),
      child: Row(
        children: [
          Text(
            player.position.toString(),
            style: Get.textTheme.bodySmall,
          ),
          const SizedBox(width: Indents.internal),
          if (player.avatar.isURL)
            CircleAvatar(
              radius: 12,
              foregroundImage: NetworkImage(player.avatar),
            ),
          const SizedBox(width: Indents.x / 2),
          Text('${player.lastName} ${player.firstName}'),
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
            style: Get.textTheme.titleSmall?.copyWith(height: 18 / 13),
          ),
        ],
      ),
    );
  }
}
