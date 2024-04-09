import 'dart:async';

import '../../../../../../../../core/data_state/data_state.dart';
import '../../../../../../../../core/resource/rtext.dart';
import '../../../../../../../../core/usecase/usecase.dart';
import '../../data/repository/game_action_type_repository.dart';
import '../entity/game_action_type.dart';

class GetActionTypeUsecase implements UseCase<FutureOr<DataState>, void> {
  static const _repository = GameActionTypeRepository();

  const GetActionTypeUsecase();

  @override
  Future<DataState> call({void params}) async {
    try {
      // if (params == null) {
      //   return DataFailed(Exception(RText.noParams), StackTrace.current);
      // }
      final types = await _repository.getSections();

      if (types.isEmpty) return const DataSuccess<String>(RText.noData);

      final result = types.map((e) => e.toEntity()).toList();

      return DataSuccess<List<GameActionType>>(result);
    } catch (e, s) {
      return DataFailed(e, s);
    }
  }
}
