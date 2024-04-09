import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../../core/utils/convert_to.dart';
import '../../../../../core/http/request_handler.dart';
import '../../period.dart';
import '../model/match_shifts.dart';

class ShiftsRepository {
  const ShiftsRepository();

  static final _http = GetIt.I.get<Dio>();

  Future<MatchShifts> getShifts({
    required String statisticId,
    String? period,
  }) async {
    const path = '/api/v1/statistics/matchshifts';
    final q = {'statisticId': statisticId, 'half': period ?? Period.all};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<MatchShifts>(res.data, MatchShifts.fromJson);
  }
}
