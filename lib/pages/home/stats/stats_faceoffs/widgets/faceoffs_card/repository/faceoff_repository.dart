import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../core/http/request_handler.dart';
import '../../../../stats_shots/stats_shots_filters/entity/importance.dart';
import '../model/faceoff.dart';

class FaceoffRepository {
  const FaceoffRepository();

  static final _http = GetIt.I.get<Dio>();

  static String importance = Importance.all;
  static List<String> plrs = [];
  static List<String> periods = [];

  Future<Faceoff> getFaceoffs({
    required List<String> statisticsIds,
    required bool isMultipleMatches,
  }) async {
    const path = '/api/v1/statistics/faceoffs';
    final q = {
      'statisticsIds[]': statisticsIds,
      'importance': importance,
      'plrs': plrs,
      'half': periods,
      'isMultipleMatches': isMultipleMatches,
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return Faceoff.fromJson(res.data);
  }
}
