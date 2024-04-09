import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../core/http/request_handler.dart';

class RestorePassRepository {
  const RestorePassRepository();

  static final _http = GetIt.I.get<Dio>();

  Future<({String status, String message})> sendMail(String email) async {
    const path = '/api/v1/auth/forgot-password';
    final data = {'email': email};
    final res = await _http.post(path, data: data);

    switch (res.statusCode!) {
      case 404:
        return (status: '404', message: 'Почта не найдена');
      case < 200 || > 300:
        return (
          status: res.statusCode.toString(),
          message: res.data.toString(),
        );
      default:
        return (
          status: res.data['status'] as String,
          message: res.data['message'] as String,
        );
    }
  }

  Future<({String id, String email})> changePass() async {
    const path = '/api/v1/auth/forgot-password';
    final data = {'id': 'string', 'password': 'string'};
    final res = await handleRequest(() => _http.patch(path, data: data));
    return (
      id: res.data['id'] as String,
      email: res.data['id'] as String,
    );
  }
}
