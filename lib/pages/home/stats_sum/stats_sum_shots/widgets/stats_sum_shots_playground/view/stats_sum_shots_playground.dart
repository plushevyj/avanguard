import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../../../core/resource/rtext.dart';
import '../../../../../../../customization/pics.dart';
import '../../../../../../../customization/std_colors.dart';
import '../../../../../../../widgets/std_loader.dart';
import 'controller/stats_sum_shots_playground_controller.dart';
import 'constant/playground_const.dart';
import 'stats_sum_shots_heatmap.dart';

class StatsSumShotsPlayground extends StatelessWidget {
  const StatsSumShotsPlayground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsSumShotsPlaygroundController())..init();

    return OrientationBuilder(builder: (ctx, orientation) {
      // will update on orientation change
      PlaygroundConst.x = Get.width - Indents.x * 4;
      return Stack(children: [
        SvgPicture.asset(Pics.playground, width: PlaygroundConst.x),
        Obx(
          () => switch (c.uiState.value) {
            StatsSumShotsPlaygroundUIState.empty => const Text(RText.noData),
            StatsSumShotsPlaygroundUIState.loading => const StdLoader(),
            StatsSumShotsPlaygroundUIState.error => const SizedBox(),
            // StatsSumShotsPlaygroundUIState.success => CustomPaint(
            //     painter: c.heatmapPainter,
            //     size: Size(PlaygroundConst.x, PlaygroundConst.x * 2),
            //   ),
            StatsSumShotsPlaygroundUIState.success => StatsSumShotsHeatmap(
                heatPoints: c.points,
              ),
          },
        ),
      ]);
    });
  }
}
