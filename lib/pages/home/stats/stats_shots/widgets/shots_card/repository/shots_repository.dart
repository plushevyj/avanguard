import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../core/http/request_handler.dart';
import '../../../../stats_controller.dart';
import '../../../stats_shots_filters/entity/importance.dart';
import '../model/shots.dart';

class ShotsRepository {
  const ShotsRepository();

  static final _http = GetIt.I.get<Dio>();

  static String importance = Importance.all;
  static List<String> plrs = [];
  static List<String> periods = [];

  Future<Shots?> getShots(List<String> statisticsIds) async {
    const path = '/api/v1/statistics/shotsinfo';
    final q = {
      'statisticIds[]': statisticsIds,
      'importance': importance,
      'plrs[]': plrs,
      'half[]': periods,
    };
    final names = await handleRequest(
      () => _http.get(
        '/api/v1/statistics/teamnames',
        queryParameters: {'statisticId': statisticsIds.firstOrNull},
      ),
    );
    Get.find<StatsController>().weAtHome = names.data['weAtHome'];
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return res.data == null || res.statusCode == 400
        ? null
        : Shots.fromJson(res.data['result']);
  }
}
