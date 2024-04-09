import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../../../module/game/model/next_game.dart';
import '../widgets/next_game_widget.dart';
import 'controller/line_controller.dart';
import 'widgets/goalkeepers_placeholder.dart';
import 'widgets/lines_playground.dart';
import 'widgets/lines_row.dart';

class NextGameLines extends StatelessWidget {
  final NextGame game;

  const NextGameLines(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(LineController());
    return Obx(
      () => c.isLoaded.isFalse
          ? const Center(child: CircularProgressIndicator.adaptive())
          : Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NextGameWidget(game),
                  const SizedBox(height: 20),
                  if (c.lines.value?.isShow == true) ...[
                    Text('Атака и оборона', style: Get.textTheme.displaySmall),
                    const SizedBox(height: Indents.internal),
                    const LinesRow(),
                    const SizedBox(height: Indents.x),
                    const LinesPlayground(),
                    const SizedBox(height: 20),
                    Text('Вратари', style: Get.textTheme.displaySmall),
                    const SizedBox(height: 10),
                    const GoalkeepersPlaceholder(),
                  ],
                  if (c.lines.value?.isShow != true) ...[
                    const Text(
                      'Состав на игру ещё не определён.',
                      style: TextStyle(color: Grey.g68),
                    ),
                    const SizedBox(height: 20),
                  ],
                ],
              ),
            ),
    );
  }
}
