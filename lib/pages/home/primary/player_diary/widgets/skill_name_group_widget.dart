import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../module/skill/model/skill_estimate.dart';

class SkillNameGroupWidget extends StatelessWidget {
  final Skill? skill;

  const SkillNameGroupWidget(this.skill, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return skill == null
        ? const SizedBox()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(skill!.name, style: Get.textTheme.titleMedium),
              const SizedBox(height: Indents.x / 2),
              Text(
                'Группа: ${skill!.category.name}',
                style: Get.textTheme.bodySmall?.apply(color: Grey.g54),
              ),
            ],
          );
  }
}
