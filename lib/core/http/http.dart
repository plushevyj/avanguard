import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

String proxy = Platform.isAndroid ? '<YOUR_LOCAL_IP>:9090' : 'localhost:9090';

class Http {
  const Http();

  Dio createClient() => Dio()
    ..options.baseUrl = baseUrl ?? 'Unable access .env base url!'
    ..options.connectTimeout = const Duration(seconds: 30)
    ..options.receiveTimeout = const Duration(seconds: 60)
    ..options.validateStatus = _noValidation
    // .._addProxy()
    ..interceptors.add(InterceptorsWrapper(onError: _throwError));

  static String? get baseUrl {
    return dotenv.env['STAGE'];
    // return dotenv.env['PROD'];
    // return kDebugMode ? dotenv.env['STAGE'] : dotenv.env['PROD'];
  }

  static bool _noValidation(_) => true;

  static void _throwError(DioException error, ErrorInterceptorHandler _) {
    String? exceptionText;
    // Todo describe reaction on all standard Exceptions
    if (error.response != null) {
      // exceptionText = error.response?.data['error'].toString();
      // exceptionText = error.response?.data['message'].toString();
      exceptionText = error.response?.data;
    } else {
      switch (error.error.runtimeType) {
        case SocketException:
          error.error.toString().contains('Failed host lookup')
              ? exceptionText = 'Ошибка подключения к серверу'
              : exceptionText = 'Отсутствует подключение к интернету';
          break;
        default:
          exceptionText = 'Возникло исключение:\n${error.error}';
      }
    }
    if (exceptionText != null) throw exceptionText;
  }
}

extension DioExtension on Dio {
  void _addProxy() {
    (httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.findProxy = (uri) => 'PROXY $proxy';
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => Platform.isAndroid;
      return null;
    };
  }
}
