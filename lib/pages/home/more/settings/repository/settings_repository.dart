import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../../../../../core/utils/convert_to.dart';
import '../../../../../core/http/request_handler.dart';
import '../../../../../module/account/model/player_account.dart';
import '../../../../auth/auth_controller.dart';

class SettingsRepository {
  const SettingsRepository();

  static final _http = GetIt.I.get<Dio>();
  static var account = Get.find<AuthController>().account.value!;

  Future<PlayerAccount> save({
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
  }) async {
    final path = '/api/v1/users/student/${account.objectId}';
    final q = {
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'email': email,
    };
    final res = await handleRequest(() => _http.get(path, queryParameters: q));
    return ConvertTo.item<PlayerAccount>(res.data, PlayerAccount.fromJson);
  }
}
