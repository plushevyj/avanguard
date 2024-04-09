import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../customization/std_colors.dart';
import '../match_picker_controller.dart';

class MatchesCountRow extends StatelessWidget {
  const MatchesCountRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<MatchPickerController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Выбрано матчей:',
          style: Get.textTheme.displaySmall?.apply(color: Grey.g54),
        ),
        Obx(
          () => Text(
            '${c.matchesCount.value}',
            style: Get.textTheme.displaySmall,
          ),
        ),
      ],
    );
  }
}
