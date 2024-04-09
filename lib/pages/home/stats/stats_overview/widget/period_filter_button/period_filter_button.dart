import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../customization/std_colors.dart';
import 'period_filter_controller.dart';

class PeriodFilterButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final String period;
  final Widget? icon;

  const PeriodFilterButton({
    required this.text,
    required this.isActive,
    required this.period,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PeriodFilterController>();
    return SizedBox(
      height: 28,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          backgroundColor: isActive ? StdColors.textColor : StdColors.border12,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        ),
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[icon!, const SizedBox(width: 4)],
              Text(
              text,
              style: Get.textTheme.bodyLarge?.apply(
                color: isActive ? Colors.white : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
