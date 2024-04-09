import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/list_extension.dart';
import '../../../../../customization/pics.dart';
import '../../../../../customization/std_colors.dart';
import '../controller/line_controller.dart';
import 'line_player_widget.dart';

class GoalkeepersPlaceholder extends StatelessWidget {
  const GoalkeepersPlaceholder({Key? key}) : super(key: key);

  static const linePlayerX = 100.0;

  @override
  Widget build(BuildContext context) {
    final line = Get.find<LineController>().lines.value?.goaltendersLine;
    return OrientationBuilder(
      builder: (context, constraints) {
        final x = Get.width - Indents.x * 2;
        return Stack(
          children: [
            SvgPicture.asset(Pics.goalkeepersPlaceholder, width: x),
            Positioned(
              left: x / 3,
              width: 2,
              height: x / 2.94,
              child: ColoredBox(color: Colors.black.withOpacity(.2)),
            ),
            // Positioned(
            //   left: x * .1,
            //   child: Text('Основной', style: Get.textTheme.bodySmall),
            // ),
            // Positioned(
            //   left: x * .6,
            //   child: Text('Запасные', style: Get.textTheme.bodySmall),
            // ),
            Column(
              children: [
                const SizedBox(height: Indents.internal),
                Row(
                  children: [
                    SizedBox(width: x * .09),
                    Expanded(
                      flex: 4,
                      child: Text('Основной', style: Get.textTheme.bodySmall),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text('Запасные', style: Get.textTheme.bodySmall),
                    ),
                  ],
                ),
                SizedBox(height: x * .08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (var i = 0; i < 3; ++i) ...[
                      LinePlayerWidget(player: line?.tryGet(i), x: linePlayerX),
                    ],
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
