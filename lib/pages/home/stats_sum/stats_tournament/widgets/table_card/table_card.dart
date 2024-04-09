import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../customization/std_colors.dart';
import '../../../../../../widgets/std_loader.dart';
import 'widgets/chess_table/chess_table.dart';
import 'widgets/chess_table/chess_table_controller.dart';
import 'widgets/tournament_table/tournament_table.dart';
import 'widgets/tournament_table/tournament_table_controller.dart';

class TableCard extends StatelessWidget {
  const TableCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(TournamentTableController())..start();
    final cc = Get.put(ChessTableController())..start();
    return Container(
      decoration: StdDecor.card,
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Indents.y,
                vertical: Indents.x,
              ),
              child: TabBar(
                labelColor: StdColors.primary.shade700,
                labelStyle: Get.textTheme.titleSmall,
                unselectedLabelColor: Grey.g54,
                indicatorWeight: 2,
                tabs: const [
                  Tab(child: Text('Классическая')),
                  Tab(child: Text('Шахматная')),
                ],
              ),
            ),
            AutoScaleTabBarView(
              children: [
                Obx(
                  () => SizedBox(
                    height: 368,
                    child: c.isLoaded.isFalse
                        ? const StdLoader()
                        : const TournamentTable(),
                  ),
                ),
                Obx(
                  () => SizedBox(
                    height: 465,
                    child: cc.isLoaded.isFalse
                        ? const StdLoader()
                        : const ChessTable(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
