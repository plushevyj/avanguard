import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/time.dart';
import '../../../../../customization/std_colors.dart';
import '../../../../../module/estimate_game/model/game_estimate.dart';
import '../../../../../widgets/buttons/button.dart';
import '../../../../../widgets/std_loader.dart';
import '../model/player_diary.dart';
import '../model/survey_options.dart';
import '../player_diary_controller.dart';
import 'question_widget.dart';

class GameSurvey extends StatefulWidget {
  const GameSurvey({Key? key}) : super(key: key);

  @override
  State<GameSurvey> createState() => _GameSurveyState();
}

class _GameSurveyState extends State<GameSurvey> {
  int? activity;
  int? attention;
  int? communicationWithTrainer;
  int? feelingIceAndGoal;
  int? health;
  int? selfScore;
  int? stress;

  void saveGame(PlayerDiaryController c) {
    c.errorMessage.value = c.errorOrNull(
      [
        activity,
        attention,
        communicationWithTrainer,
        feelingIceAndGoal,
        health,
        selfScore,
        stress,
      ],
      // params: c.parameters, // game estimate
    );
    if (c.errorMessage.value != null) return;

    c.diary.value = c.diary.value?.copyWith(
      game: Game(
        id: c.game.value?.id,
        activity: activity,
        attention: attention,
        communicationWithTrainer: communicationWithTrainer,
        feelingIceAndGoal: feelingIceAndGoal,
        health: health,
        selfScore: selfScore,
        stress: stress,
      ),
    );
    c.sendDiary();
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    final c = Get.find<PlayerDiaryController>();
    return Obx(
      () {
        if (c.game.value == null) return const StdLoader();
        return SingleChildScrollView(
          padding: const EdgeInsets.all(Indents.internal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Анкета. Игра от ${Time.dateToString(c.game.value!.date)}',
                      style: Get.textTheme.displayLarge,
                    ),
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
              const Text('ОБЩЕЕ САМОЧУВСТВИЕ', style: Inter.h2),
              const SizedBox(height: Indents.y),
              const Text('Активность', style: Inter.h3),
              const SizedBox(height: Indents.x),
              QuestionWidget(
                SurveyOptions.activity,
                onOptionSelected: (value) => activity = value,
              ),
              const SizedBox(height: Indents.y),
              const Text('Напряжение', style: Inter.h3),
              const SizedBox(height: Indents.x),
              QuestionWidget(
                SurveyOptions.stress,
                onOptionSelected: (value) => stress = value,
              ),
              const SizedBox(height: Indents.y),
              const Text('Самочувствие', style: Inter.h3),
              const SizedBox(height: Indents.x),
              QuestionWidget(
                SurveyOptions.health,
                onOptionSelected: (value) => health = value,
              ),
              const SizedBox(height: Indents.y),
              const Text('Внимательность', style: Inter.h3),
              const SizedBox(height: Indents.x),
              QuestionWidget(
                SurveyOptions.attention,
                onOptionSelected: (value) => attention = value,
              ),
              // const SizedBox(height: Indents.y),
              // c.parameters != null
              //     ? _GameRating(c.parameters!)
              //     : const Text('Сегодня игры нет', style: Inter.h2),
              const SizedBox(height: Indents.y),
              const Text('Чувство льда и шайбы', style: Inter.h3),
              const SizedBox(height: Indents.x),
              QuestionWidget(
                SurveyOptions.feelingIceAndGoal,
                onOptionSelected: (value) => feelingIceAndGoal = value,
              ),
              const SizedBox(height: Indents.y),
              const Text('Коммуникация с тренером', style: Inter.h3),
              const SizedBox(height: Indents.x),
              QuestionWidget(
                SurveyOptions.comunicationWithTrainer,
                onOptionSelected: (value) => communicationWithTrainer = value,
              ),
              const SizedBox(height: Indents.y),
              const Text('Оценка своей игры', style: Inter.h3),
              const SizedBox(height: Indents.x),
              QuestionWidget(
                SurveyOptions.selfScore,
                onOptionSelected: (value) => selfScore = value,
              ),
              Obx(
                () => c.errorMessage.value != null
                    ? Text(
                        c.errorMessage.value!,
                        style:
                            Get.textTheme.titleMedium?.apply(color: Colors.red),
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
                      child:
                          Button(text: 'Сохранить', onTap: () => saveGame(c)),
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
      },
    );
  }
}

// disabled for now, later can be enabled
class _GameRating extends StatelessWidget {
  final List<Parameter> parameters;

  const _GameRating(this.parameters, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Оцените сегодняшнюю игру\n', style: Inter.h2),
        const SizedBox(height: Indents.y),
        ...parameters.map(
          (parameter) => _NumberRating(
            name: parameter.name,
            onOptionSelected: (value) => parameter.value = value,
          ),
        ),
      ],
    );
  }
}

class _NumberRating extends StatefulWidget {
  final String name;
  final ValueChanged<int?> onOptionSelected;

  const _NumberRating({
    required this.name,
    required this.onOptionSelected,
    Key? key,
  }) : super(key: key);

  @override
  State<_NumberRating> createState() => _NumberRatingState();
}

class _NumberRatingState extends State<_NumberRating> {
  int? answer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.name,
          style: Get.textTheme.displaySmall
              ?.apply(color: StdColors.textColorBlack70),
        ),
        const SizedBox(height: Indents.x),
        SizedBox(
          height: 30,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (ctx, i) => GestureDetector(
              onTap: () {
                setState(() => answer = i);
                widget.onOptionSelected(answer == null ? null : answer! + 1);
              },
              child: Container(
                margin: const EdgeInsets.only(right: Indents.x),
                width: 28,
                height: 28,
                padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 4),
                decoration: BoxDecoration(
                  color: answer == i ? StdColors.primary : Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: const Color(0xFFE0E0E0),
                    width: 0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.30),
                      blurRadius: 1,
                      offset: const Offset(0, 0.5),
                    ),
                  ],
                ),
                child: Center(child: Text(i < 5 ? '${i + 1}' : '5+')),
              ),
            ),
          ),
        ),
        const SizedBox(height: Indents.x),
      ],
    );
  }
}
