import '../../view/model/heat_point.dart';
import 'game_action.dart';

class HeatmapCalculator {
  const HeatmapCalculator();

  List<HeatPoint> aggregateActions(List<GameAction> actions) {
    final heatMap = <String, HeatPoint>{};

    for (final action in actions) {
      final (x, y) = (action.x.floor(), action.y.floor());
      final key = '$x,$y';

      heatMap.containsKey(key)
          ? heatMap[key]!.increment()
          : heatMap[key] = HeatPoint(
              x: x,
              y: y,
              count: 1,
              weAtHome: action.weAtHome,
              isOur: action.isOur,
            );
    }

    return heatMap.values.toList();
  }
}
