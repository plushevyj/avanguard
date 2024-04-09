import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../core/http/request_handler.dart';
import '../../../stats_shots_filters/entity/importance.dart';
import '../model/players_filter.dart';

class ShotsPlayersFilterRepository {
  const ShotsPlayersFilterRepository();

  static final _http = GetIt.I.get<Dio>();

  static String importance = Importance.all;
  static List<String> plrs = [];
  static List<String> periods = [];
  static bool isOt = false;

  Future<PlayersFilter> getPlayersFilter(String statisticId) async {
    const path = '/api/v1/statistics/mapinfo/players';
    final q = {
      'statisticId': statisticId,
      'importance': importance,
      'plrs': plrs,
      'half': periods,
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    isOt = res.data['winByBuls'];
    return PlayersFilter.fromJson(res.data);
  }
}
