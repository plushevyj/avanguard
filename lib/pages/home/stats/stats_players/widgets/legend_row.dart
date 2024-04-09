import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';

class LegendRow extends StatelessWidget {
  const LegendRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Indents.x),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(backgroundColor: Grey.g68, radius: 4),
              const SizedBox(width: 6),
              Text('Лидеры', style: Get.textTheme.bodyMedium),
              const SizedBox(width: Indents.internal),
              const CircleAvatar(
                backgroundColor: StdColors.yellow,
                radius: 4,
              ),
              const SizedBox(width: 6),
              Text('Аутсайдеры', style: Get.textTheme.bodyMedium),
            ],
          ),
        ],
      ),
    );
  }
}
