import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/list_extension.dart';
import '../../../../../customization/pics.dart';
import '../../../../../customization/std_colors.dart';
import '../controller/line_controller.dart';
import 'line_player_widget.dart';

class LinesPlayground extends StatelessWidget {
  const LinesPlayground({Key? key}) : super(key: key);

  static const linePlayerX = 100.0;

  @override
  Widget build(BuildContext context) {
    final c = Get.find<LineController>();
    return OrientationBuilder(
      builder: (context, constraints) {
        final x = Get.width - Indents.x * 2;
        return Obx(
          () {
            final line =
                c.line.value = c.lines.value?.playersLines?.tryGet(c.lineIndex.value);
            return Stack(
              children: [
                SvgPicture.asset(Pics.linesPlayground, width: x),
                Positioned(
                  left: x * .26 - linePlayerX / 2,
                  top: x * .2,
                  child: LinePlayerWidget(
                    player: line?.defensemansLine?.tryGet(0),
                    x: linePlayerX,
                  ),
                ),
                Positioned(
                  left: x * .73 - linePlayerX / 2,
                  top: x * .2,
                  child: LinePlayerWidget(
                    player: line?.defensemansLine?.tryGet(1),
                    x: linePlayerX,
                  ),
                ),
                Positioned(
                  left: x * .18 - linePlayerX / 2,
                  top: x * .49,
                  child: LinePlayerWidget(
                    player: line?.wingersLine?.tryGet(0),
                    x: linePlayerX,
                  ),
                ),
                Positioned(
                  left: x * .5 - linePlayerX / 2,
                  top: x * .58,
                  child: LinePlayerWidget(
                    player: line?.wingersLine?.tryGet(1),
                    x: linePlayerX,
                  ),
                ),
                Positioned(
                  left: x * .82 - linePlayerX / 2,
                  top: x * .49,
                  child: LinePlayerWidget(
                    player: line?.wingersLine?.tryGet(2),
                    x: linePlayerX,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
