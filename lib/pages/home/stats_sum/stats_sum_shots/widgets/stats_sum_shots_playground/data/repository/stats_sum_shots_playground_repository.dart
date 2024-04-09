import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../../core/http/request_handler.dart';
import '../../../../../../../../core/utils/convert_to.dart';
import '../../../../../../stats/period.dart';
import '../../../../../../stats/stats_shots/stats_shots_filters/entity/importance.dart';
import '../../../../../../stats/stats_shots/stats_shots_filters/entity/plrs.dart';
import '../dto/game_action_dto.dart';
import '../dto/game_action_query_parameters.dart';

class StatsSumShotsPlaygroundRepository {
  const StatsSumShotsPlaygroundRepository();

  static final _http = GetIt.I.get<Dio>();

  static String importance = Importance.all;
  static List<String> plrs = Plrs.data;
  static List<String> periods = [
    Period.first,
    Period.second,
    Period.third,
    Period.ot,
  ];

  static var _params = GameActionQueryParameters();

  static void updateParams(GameActionQueryParameters params) {
    _params = _params.copyWith(
      statisticIds: params.statisticIds,
      playerIds: params.playerIds,
      actionIds: params.actionIds,
      type: params.type,
    );
  }

  Future<List<GameActionDto>> getActions(
      GameActionQueryParameters p) async {
    updateParams(p);
    const path = '/api/v1/statistics/games/actions';
    final q = {
      'plrs[]': plrs,
      'statisticsIds[]': _params.statisticIds ?? [],
      'actionIds[]': _params.actionIds ?? [],
      // 'importance': importance,
      'playerIds[]': _params.playerIds ?? [],
      // 'types': [],
      'half[]': periods, // todo choose periods
      'section': _params.type,
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.list<GameActionDto>(res.data, GameActionDto.fromJson);
  }
}
