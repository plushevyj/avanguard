import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../customization/pics.dart';
import '../../../../customization/std_colors.dart';
import '../../../../widgets/buttons/button.dart';
import '../../../../widgets/std_loader.dart';
import '../../stats/widgets/skill_card.dart';
import 'model/survey_options.dart';
import 'player_diary_controller.dart';

class PlayerDiaryStage extends StatelessWidget {
  const PlayerDiaryStage({Key? key}) : super(key: key);

  static const route = '/diary';

  @override
  Widget build(BuildContext context) {
    final c = Get.put(PlayerDiaryController());
    return Obx(
      () => c.isLoaded.isFalse
          ? const Center(child: CircularProgressIndicator.adaptive())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // morning
                Container(
                  width: double.infinity,
                  height: 1,
                  color: StdColors.border12,
                ),
                const SizedBox(height: Indents.y),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Твой дневник${c.isDayOff.isTrue ? '' : '. Утро'}',
                      style: Inter.h2,
                    ),
                    Text(
                      DateFormat('E, dd.MM.yy', 'ru_RU').format(DateTime.now()),
                      style: Inter.body.apply(color: Grey.g68),
                    ),
                  ],
                ),

                const SizedBox(height: Indents.x),
                Row(
                  children: [
                    Obx(
                      () => Text(
                        c.isDayOff.isFalse
                            ? 'Доброе утро '
                            : 'Хорошего выходного дня! ',
                      ),
                    ),
                    Image.asset(Pics.sun),
                    if (c.isDayOff.isFalse)
                      const Text(' Как твое самочувствие?', style: Inter.body),
                  ],
                ),

                if (c.isDayOff.isTrue) ...[
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: c.isDayOff.toggle,
                    child: const Text('Вернуться к заполнению'),
                  ),
                ],

                if (c.isDayOff.isFalse) ...[
                  const SizedBox(height: Indents.x / 2),
                  const SizedBox(height: Indents.x),
                  c.isMorningCompleted
                      ? const _StateFinishedWidget()
                      : const _DiaryStateWidget(SurveyType.morning),
                  const SizedBox(height: Indents.y),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('Твой дневник', style: Inter.h2),
                      Text(
                        DateFormat('E, dd.MM.yy', 'ru_RU')
                            .format(DateTime.now()),
                        style: Inter.body.apply(color: Grey.g68),
                      ),
                    ],
                  ),
                  const SizedBox(height: Indents.x),
                  const Text('Как прошел твой день?', style: Inter.body),
                  const SizedBox(height: Indents.x / 2),
                  const Text(
                    'Выбери, какое мероприятие сегодня было и опиши свои впечатления.',
                    style: Inter.body,
                  ),
                  const SizedBox(height: Indents.y),

                  // game
                  if (c.isGameToday.value == null)
                    const StdLoader()
                  else if (c.isGameToday.isTrue!) ...[
                    Row(
                      children: [
                        const Text('Игра', style: Inter.h2),
                        const SizedBox(width: Indents.x / 2),
                        Image.asset(Pics.gatesSmall, width: 20, height: 17),
                      ],
                    ),
                    const SizedBox(height: Indents.x),
                    c.isGameCompleted
                        ? const _StateFinishedWidget()
                        : const _DiaryStateWidget(SurveyType.game),
                    const SizedBox(height: Indents.y),
                  ],
                  if (c.isGroupTrainingToday.isTrue) ...[
                    Row(
                      children: [
                        const Text('Групповая тренировка', style: Inter.h2),
                        const SizedBox(width: Indents.x / 2),
                        Image.asset(Pics.persons, width: 20, height: 20),
                      ],
                    ),
                    const SizedBox(height: Indents.x),
                    c.isGroupCompleted
                        ? const _StateFinishedWidget()
                        : const _DiaryStateWidget(SurveyType.trainingGroup),
                    const SizedBox(height: Indents.y),
                  ],

                  if (c.isIndividualTrainingToday.isTrue) ...[
                    Row(
                      children: [
                        const Text(
                          'Индивидуальная тренировка',
                          style: Inter.h2,
                        ),
                        const SizedBox(width: Indents.x / 2),
                        Image.asset(Pics.hockeyStick, width: 20, height: 20),
                      ],
                    ),
                    const SizedBox(height: Indents.x),
                    c.isIndividualCompleted
                        ? const _StateFinishedWidget()
                        : const _DiaryStateWidget(
                            SurveyType.trainingIndividual,
                          ),
                    const SizedBox(height: Indents.y),
                  ],
                ],
                const Text('Навыки для развития', style: Inter.h2),
                const SizedBox(height: Indents.x),

                if (c.estimates.value?.isEmpty ?? true)
                  const Text('Тренер пока не назначил навыки'),
                Obx(
                  () => c.estimates.value == null
                      ? const StdLoader()
                      : ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          itemCount: c.estimates.value!.length,
                          itemBuilder: (_, i) =>
                              SkillCard(c.estimates.value![i]),
                        ),
                ),
              ],
            ),
    );
  }
}

class _DiaryStateWidget extends StatelessWidget {
  final SurveyType surveyType;

  const _DiaryStateWidget(this.surveyType, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<PlayerDiaryController>();
    return Row(
      children: [
        Expanded(
          child: Button(
            text: surveyType == SurveyType.morning
                ? 'Заполнить дневник'
                : 'Заполнить',
            onTap: () => c.showSurveyDialog(surveyType),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Button(
            text: surveyType == SurveyType.morning
                ? 'Сегодня выходной'
                : 'Не было',
            onTap: () => c.noTraining(surveyType),
            buttonColor: ButtonColor.third,
          ),
        ),
      ],
    );
  }
}

class _StateFinishedWidget extends StatelessWidget {
  const _StateFinishedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 36.0,
      padding: const EdgeInsets.all(Indents.x / 2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(125.0),
        border: Border.all(
          color: const Color(0xFFDFE0E3),
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 8,
            width: 8,
            decoration: const BoxDecoration(
              color: Color(0xFF81C280),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: Indents.x / 2),
          Text(
            'Заполнено',
            style: Inter.body.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
