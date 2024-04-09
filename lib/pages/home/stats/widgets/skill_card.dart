import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../../../module/skill/model/skill_estimate.dart';

class SkillCard extends StatelessWidget {
  final SkillEstimate estimate;

  const SkillCard(this.estimate, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return estimate.skill != null &&
            estimate.controlDate != null &&
            estimate.todo != null
        ? Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.18),
                  blurRadius: 14,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            padding: const EdgeInsets.all(Indents.x),
            margin: const EdgeInsets.only(bottom: Indents.x),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Навык:', style: Inter.body.copyWith(color: Grey.g54)),
                Text(estimate.skill!.name, style: Get.textTheme.displaySmall),
                const SizedBox(height: Indents.internal),
                Text(
                  'Дата контроля:',
                  style: Inter.body.copyWith(color: Grey.g54),
                ),
                Text(estimate.controlDate!, style: Inter.body),
                const SizedBox(height: Indents.internal),
                Text(
                  'Текущие трудности по навыку',
                  style: Inter.body.copyWith(color: Grey.g54),
                ),
                Text(estimate.todo ?? '-', style: Inter.body),
                const SizedBox(height: Indents.internal),
                Text(
                  'Что нужно сделать',
                  style: Inter.body.copyWith(color: Grey.g54),
                ),
                Text(estimate.plan ?? '-', style: Inter.body),
              ],
            ),
          )
        : const SizedBox();
  }
}
