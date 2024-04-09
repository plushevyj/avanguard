import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../customization/std_colors.dart';
import '../model/shifts_gap.dart';
import '../model/k_shifts.dart';
import '../stats_shifts_controller.dart';

class GapWidget extends StatelessWidget {
  final ShiftsGap gap;
  final double y;
  final bool isMajority;

  const GapWidget(
    this.gap, {
    required this.y,
    this.isMajority = true,
    Key? key,
  }) : super(key: key);

  String _toMS(ShiftsGap gap) {
    final start = DateTime(0).add(Duration(milliseconds: gap.start));
    final end = DateTime(0).add(Duration(milliseconds: gap.end));
    return '${DateFormat('ms').format(start)} - ${DateFormat('ms').format(end)}';
  }

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShiftsController());
    return gap.start * point < c.periodOffset.value
        ? const SizedBox()
        : Obx(
            () => AnimatedPositioned(
              duration: duration,
              left: (gap.start * point - c.periodOffset.value) *
                      c.periodMultiplier.value +
                  c.headerX.value,
              child: Builder(
                builder: (context) {
                  return GestureDetector(
                    onTapDown: c.updateDy,
                    child: Obx(
                      () => Tooltip(
                        triggerMode: TooltipTriggerMode.tap,
                        verticalOffset: c.getOffset(y),
                        preferBelow: false,
                        richMessage: TextSpan(
                          text: isMajority
                              ? 'Игра в большинстве'
                              : 'Игра в меньшинстве',
                          style: style,
                          children: [
                            TextSpan(text: '\nВремя: ', style: styleG),
                            TextSpan(text: _toMS(gap), style: style),
                          ],
                        ),
                        child: Container(
                          width:
                              gap.duration * point * c.periodMultiplier.value,
                          height: y,
                          color: isMajority ? Grey.g38 : StdColors.lightGrey,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
  }
}
