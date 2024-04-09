import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../customization/std_colors.dart';
import '../stats_tournament/widgets/games_card/games_card.dart';
import '../stats_tournament/widgets/player_stats_card_view/player_stats_card_view.dart';
import 'widgets/rival_select/rival_select.dart';

class StatsSumRivalPage extends StatelessWidget {
  const StatsSumRivalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: Indents.x),
        child: Column(
          children: [
            RivalSelect(),
            Gap(Indents.y),
            // TableCard(),
            Gap(Indents.y),
            PlayerStatsCardView(),
            Gap(Indents.y),
            GamesCard(),
            Gap(Indents.y),
          ],
        ),
      ),
    );
  }
}
