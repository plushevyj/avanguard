import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../widgets/std_loader.dart';
import 'controller/game_action_type_wrap_controller.dart';
import 'widget/game_action_type_widget.dart';

class GameActionTypeWrap extends StatelessWidget {
  const GameActionTypeWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(GameActionTypeWrapController())..init();
    return Obx(
      () => switch (c.uiState.value) {
        GameActionTypeUiState.loading => const StdLoader(),
        GameActionTypeUiState.success => Wrap(
            spacing: 8,
            runSpacing: 8,
            children:
                c.actionTypes.map((e) => GameActionTypeWidget(e)).toList(),
          ),
        GameActionTypeUiState.empty => const SizedBox(),
        GameActionTypeUiState.error => const SizedBox(),
      },
    );
  }
}
