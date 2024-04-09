import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../widgets/buttons/button.dart';
import '../model/player_diary.dart';
import '../model/survey_options.dart';
import '../player_diary_controller.dart';
import 'question_widget.dart';

class MorningSurvey extends StatefulWidget {
  const MorningSurvey({Key? key}) : super(key: key);

  @override
  State<MorningSurvey> createState() => _MorningSurveyState();
}

class _MorningSurveyState extends State<MorningSurvey> {
  int? sleep;
  int? mood;
  int? willToTraining;

  void saveMorning(PlayerDiaryController c) {
    c.errorMessage.value = c.errorOrNull([sleep, mood, willToTraining]);
    if (c.errorMessage.value != null) return;

    c.diary.value = c.diary.value!.copyWith(
      morning: Morning(
        sleep: sleep,
        mood: mood,
        willToTraining: willToTraining,
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
              const Expanded(child: Text('Анкета. Утро', style: Inter.h1)),
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
          const Text('Сон', style: Inter.h3),
          const SizedBox(height: Indents.x),
          QuestionWidget(
            SurveyOptions.sleep,
            onOptionSelected: (value) => sleep = value,
          ),
          const SizedBox(height: Indents.y),
          const Text('Настроение', style: Inter.h3),
          const SizedBox(height: Indents.x),
          QuestionWidget(
            SurveyOptions.mood,
            onOptionSelected: (value) => mood = value,
          ),
          const SizedBox(height: Indents.y),
          const Divider(
            thickness: 1,
            height: 1,
            color: StdColors.border12,
            indent: Indents.internal,
            endIndent: Indents.internal,
          ),
          const SizedBox(height: Indents.x),
          const Text('Желание тренироваться/играть', style: Inter.h3),
          const SizedBox(height: Indents.x),
          QuestionWidget(
            SurveyOptions.mood,
            onOptionSelected: (value) => willToTraining = value,
          ),
          Obx(
            () => c.errorMessage.value != null
                ? Text(
                    c.errorMessage.value!,
                    style: Get.textTheme.titleMedium?.apply(color: Colors.red),
                  )
                : const SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18 - Indents.internal,
              vertical: Indents.y,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Button(text: 'Сохранить', onTap: () => saveMorning(c)),
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
