import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../../../widgets/buttons/filters_button.dart';
import '../../stats/stats_goalkeepers/stats_goalkeepers_filters/stats_goalkeepers_filters_page.dart';
import '../../stats/stats_goalkeepers/widgets/gate_zones_card.dart';
import '../../stats/stats_goalkeepers/widgets/shots_by_zones_card.dart';
import '../../stats/stats_goalkeepers/widgets/stats_goalkeepers_grid.dart';
import '../widgets/match_picker/match_picker.dart';
import 'controller/stats_goalkeepers_controller.dart';

class StatsSumGoalkeepersPage extends StatelessWidget {
  const StatsSumGoalkeepersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsSumGoalkeepersController())..init();
    return Scaffold(
      body:  SingleChildScrollView(
        padding: const EdgeInsets.all(Indents.x),
        child: Column(
          children: [
            const MatchPicker(),
            FiltersButton(
              onTap: () => Get.to(() => const StatsGoalkeepersFiltersPage()),
            ),
            StatsGoalkeepersGrid(c),
            const SizedBox(height: Indents.y),
             GateZonesCard(c),
            const SizedBox(height: Indents.y),
             ShotsByZonesCard(c),
          ],
        ),
      ),
    );
  }
}
