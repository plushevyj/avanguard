import '../../../../../stats_sum_shots/widgets/stats_sum_shots_playground/domain/entity/game_action.dart';
import 'action_tooltip.dart';

class ArrowAction implements ActionTooltip {
  final double x, y, ox, oy;

  @override
  final String name;
  @override
  final String playerName;
  @override
  final String time;

  ArrowAction({
    required this.x,
    required this.y,
    required this.ox,
    required this.oy,
    required this.name,
    required this.playerName,
    required this.time,
  });

  static ArrowAction fromGameAction(GameAction action) {
    return ArrowAction(
      x: action.x,
      y: action.y,
      ox: action.ox,
      oy: action.oy,
      name: action.name,
      playerName: action.playerName,
      time: action.time,
    );
  }
}
