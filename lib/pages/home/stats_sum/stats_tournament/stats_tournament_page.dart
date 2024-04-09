import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import 'widgets/games_card/games_card.dart';
import 'widgets/player_stats_card_view/controller/player_stats_card_controller.dart';
import 'widgets/player_stats_card_view/player_stats_card_view.dart';
import 'widgets/table_card/table_card.dart';

class StatsTournamentPage extends StatelessWidget {
  const StatsTournamentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(PlayerStatsCardController());
    WidgetsBinding.instance.addPostFrameCallback((_) => c.init());
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: Indents.x),
        child: Column(
          children: [
            TableCard(),
            SizedBox(height: Indents.y),
            PlayerStatsCardView(),
            SizedBox(height: Indents.y),
            GamesCard(),
            SizedBox(height: Indents.y),
          ],
        ),
      ),
    );
  }
}
