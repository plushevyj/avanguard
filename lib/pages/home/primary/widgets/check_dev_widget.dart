import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class CheckDevWidget extends StatelessWidget {
  const CheckDevWidget({Key? key}) : super(key: key);

  static final _baseUrl = GetIt.I.get<Dio>().options.baseUrl;
  static final _prodUrl = dotenv.env['PROD'];

  @override
  Widget build(BuildContext context) {
    if (_baseUrl != _prodUrl) {
      return Text(
        'Это тестовая версия приложения!',
        style: Get.textTheme.displayLarge?.apply(color: Colors.purple),
      );
    } else if (!kReleaseMode  && _baseUrl == _prodUrl) {
      return Text(
        'Это продовская версия приложения!',
        style: Get.textTheme.displayLarge?.apply(color: Colors.redAccent),
      );
    }
    return const SizedBox();
  }
}
