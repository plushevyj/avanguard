import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../../../core/resource/rtext.dart';
import '../../../../../../../customization/pics.dart';
import '../../../../../../../customization/std_colors.dart';
import '../../../../../../../widgets/std_loader.dart';
import '../../../../stats_sum_shots/widgets/stats_sum_shots_playground/view/constant/playground_const.dart';
import 'controller/stats_sum_actions_playground_controller.dart';

class StatsSumShotsPlayground extends StatelessWidget {
  const StatsSumShotsPlayground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsSumActionsPlaygroundController());

    return OrientationBuilder(builder: (ctx, orientation) {
      // will update on orientation change
      PlaygroundConst.x = Get.width - Indents.x * 4;
      c.redrawActions();
      return Obx(
        () => Stack(children: [
          SvgPicture.asset(Pics.playground, width: PlaygroundConst.x),
          switch (c.uiState.value) {
            StatsSumActionsPlaygroundUIState.empty => const Text(RText.noData),
            StatsSumActionsPlaygroundUIState.loading => const StdLoader(),
            StatsSumActionsPlaygroundUIState.error => const SizedBox(),
            _ => const SizedBox(),
          },
          if (c.uiState.value == StatsSumActionsPlaygroundUIState.success)
            ...c.actionsWidgets,
        ]),
      );
    });
  }
}
