import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../customization/std_colors.dart';
import '../match_picker_controller.dart';

class OnlyAgainstTopThreeButton extends StatelessWidget {
  const OnlyAgainstTopThreeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<MatchPickerController>();
    return InkWell(
      onTap: c.onlyAgainstTop3.toggle,
      child: Row(
        children: [
          Obx(
            () => Container(
              width: 24,
              height: 24,
              margin: const EdgeInsets.only(right: 12),
              child: Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.focused)) {
                    return StdColors.primary;
                  }
                  return null;
                }),
                value: c.onlyAgainstTop3.isTrue,
                onChanged: (bool? value) {
                  c.onlyAgainstTop3.value = value ?? false;
                },
              ),
            ),
          ),
          Text('Только против ТОП-3', style: Get.textTheme.bodyMedium),
        ],
      ),
    );
  }
}
