import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../customization/std_colors.dart';
import '../model/goal.dart';
import '../model/k_shifts.dart';
import '../model/player.dart';
import '../stats_shifts_controller.dart';

class GoalLine extends StatelessWidget {
  final Goal goal;
  final List<Player> players;

  const GoalLine(this.goal, {required this.players, Key? key})
      : _y = players.length * rowY,
        super(key: key);

  static const _radius = 5.0;
  static const _thickness = 1.0;

  final double _y;

  double get _goalY {
    for (var i = 0; i < players.length; i++) {
      if (players[i].value == goal.playerId) {
        return (i + 1) * rowY - rowY / 2 - _radius;
      }
    }
    return 0;
  }

  String _toMS(int ms) {
    return DateFormat('ms').format(DateTime(0).add(Duration(milliseconds: ms)));
  }

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShiftsController());
    return Obx(
      () => AnimatedPositioned(
        duration: duration,
        left:
            (goal.time * point - c.periodOffset.value - _radius - _thickness) *
                    c.periodMultiplier.value +
                c.headerX.value,
        child: GestureDetector(
          onTapDown: c.updateDy,
          child: Tooltip(
            triggerMode: TooltipTriggerMode.tap,
            verticalOffset: c.getOffset(_y),
            preferBelow: false,
            richMessage: TextSpan(
              text: 'Гол',
              style: style,
              children: [
                TextSpan(text: '\nСчёт.: ', style: styleG),
                TextSpan(text: goal.currentScore, style: style),
                TextSpan(text: '\nВремя: ', style: styleG),
                TextSpan(text: _toMS(goal.time), style: style),
              ],
            ),
            child: SizedBox(
              width: _radius * 2 + _thickness,
              height: _y,
              child: Stack(
                children: [
                  Positioned(
                    left: _radius + _thickness / 2,
                    child: SizedBox(
                      height: _y,
                      child: VerticalDivider(
                        color: goal.isOur ? StdColors.red : StdColors.blue,
                        thickness: _thickness,
                        width: _thickness,
                      ),
                    ),
                  ),
                  // Positioned(
                  //   left: _thickness,
                  //   top: -_radius,
                  //   child: CircleAvatar(
                  //     backgroundColor:
                  //         goal.isOur ? StdColors.primary : StdColors.blue,
                  //     radius: _radius,
                  //   ),
                  // ),
                  if (goal.isOur)
                    Positioned(
                      left: _thickness,
                      top: _goalY,
                      child: const CircleAvatar(
                        backgroundColor: StdColors.primary,
                        radius: _radius,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
