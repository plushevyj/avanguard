import 'package:flutter/material.dart';

import 'widgets/player_stats_card.dart';

class PlayerStatsCardView extends StatelessWidget {
  const PlayerStatsCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 676,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (ctx, i) => PlayerStatsCard(i),
      ),
    );
  }
}
