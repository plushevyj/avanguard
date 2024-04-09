import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../core/http/request_handler.dart';
import '../../../../../../../core/utils/convert_to.dart';
import '../model/season.dart';
import '../model/tournament.dart';

class StatsSumChooseRepository {
  const StatsSumChooseRepository();

  static final _http = GetIt.I.get<Dio>();

  static String? seasonId;

  Future<List<Season>> getSeasons() async {
    final res = await handleRequest(() => _http.get('/api/v1/seasons'));
    return ConvertTo.list<Season>(res.data, Season.fromJson);
  }

  Future<List<Tournament>> getTournaments() async {
    const path = '/api/v1/statistics/mkc/main';
    final q = {'season': seasonId};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    if (res.statusCode == 400) return [];
    return ConvertTo.list<Tournament>(res.data, Tournament.fromJson);
  }
}
