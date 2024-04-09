import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../../../../../core/utils/convert_to.dart';
import '../../../../../core/http/request_handler.dart';
import '../../../../auth/auth_controller.dart';
import '../model/anthropometry.dart';

class AnthropometryRepository {
  const AnthropometryRepository();

  static final _http = GetIt.I.get<Dio>();
  static final _id = Get.find<AuthController>().account.value?.objectId;
  static int startDate = DateTime(2022, 6).millisecondsSinceEpoch;
  static int endDate = DateTime.now().millisecondsSinceEpoch;

  Future<Player> getData() async {
    const path = '/api/v1/nutrition/player-report';
    final q = {'startDate': startDate, 'endDate': endDate, 'playerId': _id};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<Player>(res.data, Player.fromJson);
  }
}
