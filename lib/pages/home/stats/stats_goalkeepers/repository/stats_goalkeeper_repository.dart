import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../core/http/request_handler.dart';
import '../../../../../core/utils/convert_to.dart';
import '../../stats_shots/stats_shots_filters/entity/importance.dart';
import '../model/goalkeeper_stats.dart';
import '../model/goalkeepers.dart';

class StatsGoalkeeperRepository {
  const StatsGoalkeeperRepository();

  static final _http = GetIt.I.get<Dio>();

  static String importance = Importance.all;
  static List<String> plrs = [];
  static List<String> periods = [];
  static List<String> goalkeeperIds = [];

  Future<GoalkeeperStats> getStats(List<String> statisticsIds) async {
    const path = '/api/v1/statistics/matchgoaltendersinfo';
    final q = {
      'statisticsIds[]': statisticsIds,
      'playerIds': goalkeeperIds,
      'importance': importance,
      'plrs': plrs,
      'half': periods,
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<GoalkeeperStats>(res.data, GoalkeeperStats.fromJson);
  }

  Future<Goalkeepers> getGoalkeepers(List<String> statisticsIds) async {
    const path = '/api/v1/statistics/matchgoaltendersnames';
    final q = {'statisticsIds[]': statisticsIds};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<Goalkeepers>(res.data, Goalkeepers.fromJson);
  }
}
