import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import '../../../core/http/request_handler.dart';
import '../../../core/utils/convert_to.dart';
import '../../account/model/player_account.dart';

class LoginRepository {
  const LoginRepository();

  static final _http = GetIt.I.get<Dio>();

  Future<PlayerAccount> logIn({
    required String username,
    required String password,
  }) async {
    const path = '/parse/parse/login';
    final dev = {
      'my': {
        'username': 't@t.com',
        'password': 'qwer1234',
      },
      'andrey': {
        'username': 'belikovandrey71@gmail.com',
        'password': 'belikovandrey71',
      },
      'danil': {
        'username': 'danilv1708@gmail.com',
        'password': 'danilv1708',
      },
      'test': {
        'username': 'artemiy_ivanenko@mail.ru',
        'password': 'artemiy_ivanenko',
      },
      'test2': {
        'username': 'petrova@mail.ru',
        'password': 'petrovamail',
      },
      'test3': {
        'username': 'yadykin1388@mail.ru',
        'password': 'yadykin1388',
      },
      'test4': {
        'username': 'oognev@mail.ru',
        'password': 'yadykin1388',
      },
      'test5': {
        'username': 'aplhock@bk.ru',
        'password': 'aplhock',
      },
      'test6': {
        'username': 'sbazelev@gmail.com',
        'password': 'sbazelev',
      },
      'test7': {
        'username': 'gleb.b07@icloud.com',
        'password': 'gleb.b07@icloud.com',
      },
      'test8': {
        'username': 'saravara06@bk.ru',
        'password': 'saravara06',
      },
      'oognev14@gmail.com': {
        'username': 'oognev14@gmail.com',
        'password': 'oognev14',
      },
      'roma': {
        'username': 'frassroma05@gmail.com',
        'password': 'frassroma05@gmail.com',
      },
      'test9': {
        'username': 'sbazelev@gmail.com',
        'password': 'sbazelev@gmail.com',
      }
    };

    final prod = {'username': username, 'password': password};
    final data = kDebugMode ? dev['danil'] : prod;
    data!['_ApplicationId'] = 'h1QhtsSjeoyQSa8RDQBDPvgbnI7Ix6nadHTsepwN';

    final res = await handleRequest(() => _http.get(path, data: data));
    return ConvertTo.item<PlayerAccount>(res.data, PlayerAccount.fromJson);
  }

  Future<PlayerAccount> loginByToken() async {
    final res = await handleRequest(() => _http.get('/api/v1/auth/me'));
    return ConvertTo.item<PlayerAccount>(res.data, PlayerAccount.fromJson);
  }
}
