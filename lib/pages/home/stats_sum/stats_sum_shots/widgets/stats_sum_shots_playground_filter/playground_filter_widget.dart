import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../widgets/std_loader.dart';
import '../../../../../../widgets/multi_select/multi_select.dart';
import '../../../../../../widgets/multi_select/my_gf_multi_select.dart';
import 'controller/playground_filter_controller.dart';

class PlaygroundFilterWidget extends StatelessWidget {
  final MultiSelectController controller;

  const PlaygroundFilterWidget(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(PlaygroundFilterController())..init();
    return Obx(() => switch (c.uiState.value) {
      PlaygroundFilterUiState.loading => const StdLoader(),
      PlaygroundFilterUiState.error => const SizedBox(),
      PlaygroundFilterUiState.success => SizedBox(
        child: MultiSelect(
          c.players,
          controller: controller,
          labelText: 'Игроки',
          onSelect: c.updatePlayground,
          isCategorized: true,
        ),
      ),
    });
  }
}
