import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../widgets/buttons/button.dart';
import '../model/player_diary.dart';
import '../model/survey_options.dart';
import '../player_diary_controller.dart';
import 'player_skill_estimate_widget.dart';
import 'question_widget.dart';

class GroupSurvey extends StatefulWidget {
  const GroupSurvey({Key? key}) : super(key: key);

  @override
  State<GroupSurvey> createState() => _GroupSurveyState();
}

class _GroupSurveyState extends State<GroupSurvey> {
  int? gymMood;
  int? gymHealth;
  int? iceMood;
  int? iceHealth;
  int? skillMood;
  int? skillHealth;

  void saveGroupTraining(PlayerDiaryController c) {
    final textControllers = c.trainingSkillEstimate.values.toList();
    c.errorMessage.value = c.errorOrNull(
      [
        gymMood,
        gymHealth,
        iceMood,
        iceHealth,
        if (c.skills.isNotEmpty) ...[skillMood, skillHealth],
      ],
      playerEstimates: textControllers,
    );

    if (c.errorMessage.value != null) return;

    final comments = [
      for (var i = 0; i < (c.estimates.value?.length ?? 0); ++i)
        Comment(
          date: DateTime.now(),
          comment: textControllers[i].text,
          estimate: PlayerEstimate(id: c.estimates.value![i].id),
        ),
    ];

    c.diary.value = c.diary.value!.copyWith(
      trainingGroup: TrainingGroup(
        gymMood: gymMood,
        gymHealth: gymHealth,
        iceMood: gymHealth,
        iceHealth: iceHealth,
        skillMood: skillMood,
        skillHealth: skillHealth,
        comments: comments,
      ),
    );
    c.sendDiary();
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    final c = Get.find<PlayerDiaryController>();
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Indents.internal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Text('Анкета.\nГрупповая тренировка', style: Inter.h1),
              ),
              IconButton(
                onPressed: Get.back,
                icon: Icon(
                  Icons.close_rounded,
                  color: Colors.black.withOpacity(.54),
                ),
              ),
            ],
          ),
          const SizedBox(height: Indents.x / 2),
          Text(
            DateFormat('E, dd.MM.yy', 'ru_RU').format(DateTime.now()),
            style: Inter.body.apply(color: Grey.g68),
          ),
          const SizedBox(height: Indents.y),
          const Text('Зал', style: Inter.h2),
          const SizedBox(height: Indents.y),
          const Divider(
            thickness: 1,
            height: 1,
            color: StdColors.border12,
            endIndent: Indents.internal,
          ),
          const SizedBox(height: Indents.x),
          const Text('Настроение', style: Inter.h3),
          const SizedBox(height: Indents.x),
          QuestionWidget(
            SurveyOptions.mood,
            onOptionSelected: (value) => gymMood = value,
          ),
          const SizedBox(height: Indents.y),
          const Divider(
            thickness: 1,
            height: 1,
            color: StdColors.border12,
            endIndent: Indents.internal,
          ),
          const SizedBox(height: Indents.x),
          const Text('Самочувствие', style: Inter.h3),
          const SizedBox(height: Indents.x),
          QuestionWidget(
            SurveyOptions.health,
            onOptionSelected: (value) => gymHealth = value,
          ),
          const SizedBox(height: Indents.x),
          const Text('ЛЁД', style: Inter.h2),
          const SizedBox(height: Indents.y),
          const Text('Настроение', style: Inter.h3),
          const SizedBox(height: Indents.x),
          QuestionWidget(
            SurveyOptions.mood,
            onOptionSelected: (value) => iceMood = value,
          ),
          const SizedBox(height: Indents.y),
          const Divider(
            thickness: 1,
            height: 1,
            color: StdColors.border12,
            endIndent: Indents.internal,
          ),
          const SizedBox(height: Indents.x),
          const Text('Самочувствие', style: Inter.h3),
          const SizedBox(height: Indents.x),
          QuestionWidget(
            SurveyOptions.health,
            onOptionSelected: (value) => iceHealth = value,
          ),
          if (c.skills.isNotEmpty) ...[
            const SizedBox(height: Indents.y),
            const Text('РАБОТА НАД НАВЫКОМ', style: Inter.h2),
            const SizedBox(height: Indents.y),
            const PlayerSkillEstimateWidget(),
            const SizedBox(height: Indents.y),
            const Text('Настроение при работе над навыком', style: Inter.h3),
            const SizedBox(height: Indents.x),
            QuestionWidget(
              SurveyOptions.mood,
              onOptionSelected: (value) => skillMood = value,
            ),
            const SizedBox(height: Indents.y),
            const Divider(
              thickness: 1,
              height: 1,
              color: StdColors.border12,
              endIndent: Indents.internal,
            ),
            const SizedBox(height: Indents.x),
            const Text('Самочувствие при работе над навыком', style: Inter.h3),
            const SizedBox(height: Indents.x),
            QuestionWidget(
              SurveyOptions.sleep, // wtf?
              onOptionSelected: (value) => skillHealth = value,
            ),
          ],
          if (c.skills.isEmpty)
            const Text('Здесь будут выбранные навыки для развития'),
          Obx(
            () => c.errorMessage.value != null
                ? Text(
                    c.errorMessage.value!,
                    style: Get.textTheme.titleMedium?.apply(color: Colors.red),
                  )
                : const SizedBox(),
          ),
          const SizedBox(height: Indents.x),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18 - Indents.internal,
              vertical: Indents.y,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Button(
                    text: 'Сохранить',
                    onTap: () => saveGroupTraining(c),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Button(
                    text: 'Отменить',
                    onTap: c.back,
                    buttonColor: ButtonColor.third,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
