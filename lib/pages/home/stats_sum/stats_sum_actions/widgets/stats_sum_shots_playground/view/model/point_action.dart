import 'dart:ui';

import '../../../../../../../../customization/std_colors.dart';
import '../../../../../stats_sum_shots/widgets/stats_sum_shots_playground/domain/entity/game_action.dart';
import 'action_tooltip.dart';

class PointAction implements ActionTooltip {
  final double x, y;
  final String title;
  final Color color;

  @override
  final String name;
  @override
  final String playerName;
  @override
  final String time;

  PointAction({
    required this.x,
    required this.y,
    required this.title,
    required this.name,
    required this.playerName,
    required this.time,
    required this.color,
  });

  static PointAction fromGameAction(GameAction action) {
    return PointAction(
      x: action.x,
      y: action.y,
      title: action.shortName,
      name: action.name,
      playerName: action.playerName,
      time: action.time,
      color: action.isOur ? StdColors.primary : Grey.g68,
    );
  }
}
