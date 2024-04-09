import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../core/http/request_handler.dart';
import '../model/faceoffs_players.dart';

class PlayersFilterRepository {
  const PlayersFilterRepository();

  static final _http = GetIt.I.get<Dio>();

  Future<FaceoffsPlayers> getPlayersFilter(List<String> statisticsIds) async {
    const path = '/api/v1/statistics/faceoffs/players';
    final q = {'statisticsIds[]': statisticsIds};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return FaceoffsPlayers.fromJson(res.data);
  }
}
