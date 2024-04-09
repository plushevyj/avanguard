import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../core/utils/convert_to.dart';
import '../../../../../../../core/http/request_handler.dart';
import '../../../stats_shots_filters/entity/importance.dart';
import '../model/playground.dart';

class PlaygroundRepository {
  const PlaygroundRepository();

  static final _http = GetIt.I.get<Dio>();

  static String importance = Importance.all;
  static List<String> plrs = [];
  static List<String> periods = [];

  Future<Playground> getPlayground({
    required List<String> statisticId,
    required List<String> playerIds,
  }) async {
    const path = '/api/v1/statistics/mapinfo';
    // const path = '/api/v1/statistics/games/actions';
    final q = {
      'statisticId': statisticId,
      // 'statisticsIds[]': [statisticId],
      'playerIds': playerIds,
      'importance': importance,
      'plrs': plrs,
      'half': periods,
      // 'section': 'throw_maps'
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<Playground>(res.data, Playground.fromJson);
  }
}
