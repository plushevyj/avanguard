import 'dart:async';

import '../../../../../../../../core/data_state/data_state.dart';
import '../../../../../../../../core/resource/rtext.dart';
import '../../../../../../../../core/usecase/usecase.dart';
import '../../data/dto/game_action_query_parameters.dart';
import '../../data/repository/stats_sum_shots_playground_repository.dart';
import '../../view/model/heat_point.dart';
import '../../view/model/heatmap_painter.dart';
import '../entity/heatmap_calculator.dart';

class DrawHeatmapUsecase
    implements UseCase<FutureOr<DataState>, GameActionQueryParameters> {
  static const _repository = StatsSumShotsPlaygroundRepository();
  static const _calculator = HeatmapCalculator();

  const DrawHeatmapUsecase();

  @override
  Future<DataState> call({GameActionQueryParameters? params}) async {
    try {
      if (params == null) {
        return DataFailed(Exception(RText.noParams), StackTrace.current);
      }

      final actions = await _repository.getActions(params);
      if (actions.isEmpty) {
        // Явное указание возвращаемого типа необходимо так как
        // Иначе компилятор обобщит тип до DataSuccess<dynamic>
        return const DataSuccess<String>(RText.noData);
      }

      final List<HeatPoint> heatPoints = _calculator
          .aggregateActions(actions.map((a) => a.toEntity()).toList());
      // return DataSuccess<List<HeatPoint>>(HeatmapPainter(heatPoints));
      return DataSuccess<List<HeatPoint>>(heatPoints);
    } catch (e, s) {
      return DataFailed(e, s);
    }
  }

  void updateParams(GameActionQueryParameters params) {
    StatsSumShotsPlaygroundRepository.updateParams(params);
  }
}
