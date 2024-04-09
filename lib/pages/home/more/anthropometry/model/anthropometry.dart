import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../../core/utils/time.dart';

part 'anthropometry.freezed.dart';

part 'anthropometry.g.dart';

@freezed
// ignore: prefer-match-file-name
class Player with _$Player {
  const factory Player({
    required String id,
    required String firstName,
    required String lastName,
    required String? avatar,
    required String playerNumber,
    required List<Param> params,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

@freezed
class Param with _$Param {
  const Param._();

  const factory Param({
    required double height,
    required double weight,
    required double caliperometry,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: Time.stampToDate, toJson: Time.dateToStamp)
    required DateTime date,
    required Warnings warnings,
    required double bmi,
  }) = _Param;

  int get dayFromYear => date.difference(DateTime(date.year)).inDays;

  int get season => date.month > 6 ? date.year % 2000 : (date.year - 1) % 2000;

  factory Param.fromJson(Map<String, dynamic> json) => _$ParamFromJson(json);
}

@freezed
class Warnings with _$Warnings {
  const factory Warnings({
    required bool increaseHeightMoreFivePerSixMonth,
    required bool decreaseHeightLessFivePerSixMonth,
    required bool increaseWeightMoreFivePerSixMonth,
    required bool decreaseWeightLessFivePerSixMonth,
    required bool increaseFatMoreFivePerSixMonth,
    required bool decreaseFatLessFivePerSixMonth,
  }) = _Warnings;

  factory Warnings.fromJson(Map<String, dynamic> json) =>
      _$WarningsFromJson(json);
}
