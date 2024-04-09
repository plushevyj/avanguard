import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../stats_sum_shots/widgets/stats_sum_shots_playground/domain/entity/game_action.dart';
import '../../../../../stats_sum_shots/widgets/stats_sum_shots_playground/view/constant/playground_const.dart';
import '../model/arrow_action.dart';
import '../model/point_action.dart';
import '../widget/arrow_widet.dart';

class ActionDrawer {
  const ActionDrawer();

  static final _style = Get.textTheme.bodySmall?.apply(color: Colors.white);
  static final _styleM = Get.textTheme.bodyMedium?.apply(color: Colors.white);
  static final _styleG =
      Get.textTheme.bodySmall?.apply(color: Colors.white.withOpacity(.7));

  List<Widget> draw(List<GameAction> actions) {
    return switch (actions.first.shortName) {
      'PA' || 'PI' => _arrows(actions.map(ArrowAction.fromGameAction).toList()),
      _ => _points(actions.map(PointAction.fromGameAction).toList()),
    };
  }

  List<Widget> _points(List<PointAction> points) => points
      .map(
        (point) => Positioned(
          left: point.x * PlaygroundConst.coef,
          top: point.y * PlaygroundConst.coef,
          child: Tooltip(
            triggerMode: TooltipTriggerMode.tap,
            preferBelow: false,
            richMessage: TextSpan(
              children: [
                TextSpan(text: 'Игрок: ', style: _styleG),
                TextSpan(text: point.playerName, style: _style),
                TextSpan(text: '\nДействие: ', style: _styleG),
                TextSpan(text: point.name, style: _style),
                TextSpan(text: '\nВремя: ', style: _styleG),
                TextSpan(text: point.time, style: _style),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: point.color,
                shape: BoxShape.circle,
              ),
              child: Text(point.title, style: _style),
            ),
          ),
        ),
      )
      .toList(growable: false);

  List<Widget> _arrows(List<ArrowAction> arrows) {
    final coef = PlaygroundConst.coef;
    return arrows.map(
      (arrow) {
        final x = arrow.x * coef, y = arrow.y * coef;
        return Positioned(
          left: x,
          top: y,
          child: Transform(
            transform: Matrix4.rotationZ(
              math.atan2(arrow.oy - arrow.y, arrow.ox - arrow.x),
            ),
            child: Tooltip(
              preferBelow: false,
              triggerMode: TooltipTriggerMode.tap,
              richMessage: TextSpan(
                text: arrow.name,
                style: _styleM,
                children: [
                  TextSpan(text: '\nИгрок: ', style: _styleG),
                  TextSpan(text: arrow.playerName, style: _style),
                  TextSpan(text: '\nДействие: ', style: _styleG),
                  TextSpan(text: arrow.name, style: _style),
                  TextSpan(text: '\nВремя: ', style: _styleG),
                  TextSpan(text: arrow.time, style: _style),
                ],
              ),
              child: ArrowWidget(
                x: arrow.x * coef,
                y: arrow.y * coef,
                ox: arrow.ox * coef,
                oy: arrow.oy * coef,
              ),
            ),
          ),
        );
      },
    ).toList(growable: false);
  }
}
