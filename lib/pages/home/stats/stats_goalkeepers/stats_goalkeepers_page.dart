import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../../../widgets/buttons/filters_button.dart';
import 'controller/stats_goalkeepers_controller.dart';
import 'stats_goalkeepers_filters/stats_goalkeepers_filters_page.dart';
import 'widgets/gate_zones_card.dart';
import 'widgets/shots_by_zones_card.dart';
import 'widgets/stats_goalkeepers_grid.dart';

class StatsGoalkeepersPage extends StatelessWidget {
  const StatsGoalkeepersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsGoalkeepersController())..load();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 0,
        toolbarHeight: 70,
        title: FiltersButton(
          onTap: () => Get.to(() => const StatsGoalkeepersFiltersPage()),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Indents.x),
        child: Column(
          children: [
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
