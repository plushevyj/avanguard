import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

import '../../../../../core/http/request_handler.dart';
import '../../../../../core/utils/convert_to.dart';
import '../model/player_diary.dart';
import '../model/survey_options.dart';

class PlayerDiaryRepository {
  const PlayerDiaryRepository();

  static final _http = GetIt.I.get<Dio>();

  static const _path = '/api/v1/player-diary';

  Future<PlayerDiary> sendDiary(PlayerDiary diary) async {
    final res =
        await handleRequest(() => _http.post(_path, data: diary.toJson()));
    log(res.data.toString());
    return ConvertTo.item<PlayerDiary>(res.data, PlayerDiary.fromJson);
  }

  Future<PlayerDiary> setDayOff(SurveyType surveyType, String? id) async {
    final data = {
      'date': DateFormat('yyyy-MM-dd').format(DateTime.now()),
      'id': id,
      surveyType.name: {'isDayOff': true},
    };
    final res = await handleRequest(() => _http.post(_path, data: data));

    return ConvertTo.item<PlayerDiary>(res.data, PlayerDiary.fromJson);
  }

  Future<PlayerDiary?> getDiaryOrNull() async {
    final q = {'date': DateFormat('yyyy-MM-dd').format(DateTime.now())};
    final res = await handleRequest(() => _http.get(_path, queryParameters: q));

    return res.data == null || res.data.isEmpty
        ? null
        : ConvertTo.item<PlayerDiary>(res.data, PlayerDiary.fromJson);
  }

  /// Util function, only for debug usage.
  /// [id] is must have, or backend won't apply changes
  ///
  restoreDiaryState(String? id) async {
    if (kReleaseMode) return;
    final data = {
      'date': DateFormat('yyyy-MM-dd').format(DateTime.now()),
      'id': id,
      'trainingGroup': null,
      'trainingIndividual': null,
      'morning': null,
      'game': null,
      // 'trainingGroup': {'isDayOff': false},
      // 'trainingIndividual': {'isDayOff': false},
      // 'morning': {'isDayOff': false},
      // 'game': {'isDayOff': false},
    };
    final res = await handleRequest(() => _http.post(_path, data: data));
    log(res.data.toString());
  }
}
