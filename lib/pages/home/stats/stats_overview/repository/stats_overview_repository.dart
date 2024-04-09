import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../core/http/request_handler.dart';
import '../../../../../core/utils/convert_to.dart';
import '../../period.dart';
import '../model/stats_overview.dart';

class StatsOverviewRepository {
  const StatsOverviewRepository();

  static final _http = GetIt.I.get<Dio>();

  static bool isOt = false;

  Future<StatisticsGetMatchIndexPageInfoResponseDto> getStats({
    required String statisticId,
    String? period,
  }) async {
    const path = '/api/v1/statistics/index';
    final q = {'statisticId': statisticId, 'half': period ?? Period.all};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    final stats =
        await ConvertTo.item<StatisticsGetMatchIndexPageInfoResponseDto>(
      res.data,
      StatisticsGetMatchIndexPageInfoResponseDto.fromJson,
    );
    isOt = stats.winByBullitts;
    return stats;
  }
}
