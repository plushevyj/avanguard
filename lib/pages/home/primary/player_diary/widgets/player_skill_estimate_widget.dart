import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../player_diary_controller.dart';

class PlayerSkillEstimateWidget extends StatefulWidget {
  const PlayerSkillEstimateWidget({Key? key}) : super(key: key);

  @override
  State<PlayerSkillEstimateWidget> createState() =>
      _PlayerSkillEstimateWidgetState();
}

class _PlayerSkillEstimateWidgetState extends State<PlayerSkillEstimateWidget> {
  @override
  Widget build(BuildContext context) {
    final c = Get.put(PlayerDiaryController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final MapEntry(key: skill, value: controller)
            in c.trainingSkillEstimate.entries) ...[
          Container(
            padding: const EdgeInsets.only(left: Indents.internal),
            decoration: const BoxDecoration(
              border: Border(left: BorderSide(color: StdColors.primary)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(skill?.name ?? '-', style: Get.textTheme.titleMedium),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Группа:',
                      style: Get.textTheme.bodySmall?.apply(color: Grey.g54),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      skill?.category.name ?? '-',
                      style: Get.textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Что делал для улучшения навыка?',
            ),
            controller: controller,
          ),
          const SizedBox(height: 3),
          const Text(
            'Укажите количество или время выполнения упражнения',
            style: TextStyle(
              fontSize: 10,
              color: Grey.g54,
            ),
          ),
          const SizedBox(height: Indents.y),
        ],
      ],
    );
  }
}
