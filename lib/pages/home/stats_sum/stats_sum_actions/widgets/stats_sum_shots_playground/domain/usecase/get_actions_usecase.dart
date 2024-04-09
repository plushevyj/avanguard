import 'dart:async';

import '../../../../../../../../core/data_state/data_state.dart';
import '../../../../../../../../core/resource/rtext.dart';
import '../../../../../../../../core/usecase/usecase.dart';
import '../../../../../stats_sum_shots/widgets/stats_sum_shots_playground/data/dto/game_action_query_parameters.dart';
import '../../../../../stats_sum_shots/widgets/stats_sum_shots_playground/data/repository/stats_sum_shots_playground_repository.dart';
import '../../../../../stats_sum_shots/widgets/stats_sum_shots_playground/domain/entity/game_action.dart';

class GetActionsUsecase
    implements UseCase<FutureOr<DataState>, GameActionQueryParameters> {
  static const _repository = StatsSumShotsPlaygroundRepository();

  const GetActionsUsecase();

  @override
  Future<DataState> call({GameActionQueryParameters? params}) async {
    try {
      if (params == null) {
        return DataFailed(Exception(RText.noParams), StackTrace.current);
      }
      final actions = await _repository.getActions(params);
      if (actions.isEmpty) return const DataSuccess<String>(RText.noData);
      final result = actions.map((e) => e.toEntity()).toList();
      return DataSuccess<List<GameAction>>(result);
    } catch (e, s) {
      return DataFailed(e, s);
    }
  }

  void updateParams(GameActionQueryParameters params) {
    StatsSumShotsPlaygroundRepository.updateParams(params);
  }
}
