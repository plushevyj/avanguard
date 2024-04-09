import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../customization/std_colors.dart';

extension ViewExtension on List<int> {
  Widget get asScore {
    if (this case ([int home, int away])) {
      return Row(
        children: [
          Text(
            '$home',
            style: Get.textTheme.bodyLarge
                ?.apply(color: home > away ? null : Grey.g54),
          ),
          Text(':', style: Get.textTheme.bodyLarge),
          Text(
            '$away',
            style: Get.textTheme.bodyLarge
                ?.apply(color: home < away ? null : Grey.g54),
          ),
        ],
      );
    }
    return const SizedBox();
  }
}
