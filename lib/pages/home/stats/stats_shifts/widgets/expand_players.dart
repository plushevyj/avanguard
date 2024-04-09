import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../model/k_shifts.dart';
import '../stats_shifts_controller.dart';

class ExpandPlayers extends StatelessWidget {
  const ExpandPlayers({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShiftsController());
    return Obx(
      () => AnimatedContainer(
        duration: duration,
        width: c.headerX.value,
        decoration: const BoxDecoration(
          border: Border.symmetric(vertical: side),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (c.isExpand.value)
              Flexible(
                flex: 2,
                child: SizedBox(
                  width: c.headerX.value - c.iconY.value - 2,
                  child: const Padding(
                    padding: EdgeInsets.only(left: Indents.x),
                    child: Text('Игрок'),
                  ),
                ),
              ),
            Flexible(
              child: AnimatedContainer(
                duration: duration,
                width: c.iconY.value,
                color: StdColors.primary.shade700,
                height: headerY,
                child: IconButton(
                  onPressed: () => c.updateHeaderX(),
                  icon: c.isExpand.value
                      ? const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 12,
                        )
                      : const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 12,
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
