import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'token_repository.dart';

class TokenRepositoryImpl implements TokenRepository {
  const TokenRepositoryImpl();

  @override
  Future<String?> getToken() async {
    final storage = await _openStorage();
    return storage.get('token') as String?;
  }

  @override
  void addToken(String token) {
    GetIt.I.get<Dio>().options.headers['Authorization'] = 'Bearer $token';
  }

  @override
  Future<void> saveToken(String token) async {
    final storage = await _openStorage();
    storage.put('token', token);
  }

  @override
  Future<void> clearToken() async => await (await _openStorage()).clear();

  Future<Box> _openStorage() async => await Hive.openBox('token');
}