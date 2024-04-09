import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../../../core/utils/convert_to.dart';
import '../../../core/http/request_handler.dart';
import '../../pages/auth/auth_controller.dart';
import 'model/skill_estimate.dart';

class SkillRepository {
  const SkillRepository();

  static final _http = GetIt.I.get<Dio>();

  static final _id = Get.find<AuthController>().account.value?.objectId;

  Future<List<SkillEstimate>> getSkillEstimateList() async {
    const path = '/api/v1/skill/estimate';
    final q = {'playersIds[0]': _id, 'isCompleted': false};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.list<SkillEstimate>(res.data['estimates'], SkillEstimate.fromJson);
  }

  Future<dynamic> postSkillEstimateList() async {
    const path = '/api/v1/skill/estimate';
    final q = {'playersIds[0]': _id};
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.list<SkillEstimate>(res.data['estimates'], SkillEstimate.fromJson);
  }
}
