import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class VideoFragmentInfoWidget extends StatelessWidget {
  const VideoFragmentInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Продолжительность: ',style: Get.textTheme.bodyLarge),
            Text('01:12', style: Get.textTheme.titleMedium),
          ],
        ),
        const Gap(8),
        Row(
          children: [
            Text('Время начала: ',style: Get.textTheme.bodyLarge),
            Text('01:12', style: Get.textTheme.titleMedium),
          ],
        ),
        const Gap(8),
        Row(
          children: [
            Text('Время окончания: ',style: Get.textTheme.bodyLarge),
            Text('01:12', style: Get.textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
