import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../../customization/std_colors.dart';
import '../match_picker_controller.dart';

class HideFiltersButton extends StatelessWidget {
  const HideFiltersButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<MatchPickerController>();
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          onPressed: c.toggleFilters,
          child: Row(
            children: [
              const Text('Скрыть фильтры'),
              const Gap(Indents.x),
              Obx(
                () => AnimatedRotation(
                  duration: MatchPickerController.duration,
                  turns: c.rotation.value,
                  child: const Icon(Icons.keyboard_arrow_up, size: 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
