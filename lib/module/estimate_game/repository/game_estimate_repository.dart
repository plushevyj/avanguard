import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../core/http/request_handler.dart';
import '../../../core/utils/convert_to.dart';
import '../model/game_estimate.dart';

class GameEstimateRepository {
  const GameEstimateRepository();

  static final _http = GetIt.I.get<Dio>();

  Future<GameEstimate> getEstimateGame(String gameId) async {
    final path = '/api/v1/estimate-game/student/$gameId';
    final res = await handleRequest(() => _http.get(path));
    return ConvertTo.item<GameEstimate>(res.data, GameEstimate.fromJson);
  }

  Future<GameEstimate> sendGameEstimate({
    required String gameId,
    required List<Parameter> parameters,
  }) async {
    final path = '/api/v1/estimate-game/student/$gameId';
    final data = {'parameters': parameters.toString()};
    final res = await handleRequest(() => _http.post(path, data: data));
    return ConvertTo.item<GameEstimate>(res.data, GameEstimate.fromJson);
  }
}
