import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../core/utils/convert_to.dart';
import '../../../../../../../core/http/request_handler.dart';
import '../../../../stats_shots/stats_shots_filters/entity/importance.dart';
import '../model/faceoffs_playground.dart';

class FaceoffsPlaygroundRepository {
  const FaceoffsPlaygroundRepository();

  static final _http = GetIt.I.get<Dio>();

  static String importance = Importance.all;
  static List<String> plrs = [];
  static List<String> periods = [];

  Future<FaceoffsPlayground> getPlayground({
    required List<String> statisticsIds,
    required List<String> playerIds,
    required bool isMultipleMatches,
  }) async {
    const path = '/api/v1/statistics/faceoffs/map';
    final q = {
      'statisticsIds[]': statisticsIds,
      'playerIds': playerIds,
      'importance': importance,
      'plrs': plrs,
      'half': periods,
      'isMultipleMatches': isMultipleMatches,
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<FaceoffsPlayground>(res.data, FaceoffsPlayground.fromJson);
  }
}
