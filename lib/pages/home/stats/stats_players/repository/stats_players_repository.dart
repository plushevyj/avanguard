import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../core/utils/convert_to.dart';
import '../../../../../core/http/request_handler.dart';
import '../../stats_shots/stats_shots_filters/entity/importance.dart';
import '../model/players_stats.dart';

class StatsPlayersRepository {
  const StatsPlayersRepository();

  static final _http = GetIt.I.get<Dio>();

  static String importance = Importance.all;
  static List<String> plrs = [];
  static List<String> periods = [];
  static String? role;


  //todo: исправить [statisticsIds must be an array, each value in statisticsIds should not be empty, each value in statisticsIds must be a string], error: Bad Request}
  //todo: ВР% - "replayedTimePercent":3
  getTable<T>({required List<String> statisticsIds, required String tab}) async {
    final q = {
      'statisticsIds[]': statisticsIds,
      'tab': tab,
      'importance': importance,
      'plrs[]': plrs,
      'half[]': periods,
      if (role != null) 'hockeyRole': role,
    };
    const path = '/api/v1/statistics/matchplayers';
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    print('res = $res');
    return ConvertTo.list<T>(res.data['items'], PlayersStats.typesCtors[tab]);
  }
}
