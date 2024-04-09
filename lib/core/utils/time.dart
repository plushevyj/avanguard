import 'dart:math' as math;

import 'package:intl/intl.dart';

abstract class Time {
  static DateTime stampToDate(int stamp) {
    return DateTime.fromMillisecondsSinceEpoch(stamp);
  }

  static int dateToStamp(DateTime time) => time.millisecondsSinceEpoch;

  static String dateToString(date) => DateFormat('yyyy-MM-dd').format(date);

  static DateTime stringToDate(String date) => DateTime.parse(date);

  static bool isSameDay(DateTime date1, DateTime date2) =>
      (date1.year == date2.year) &&
      (date1.month == date2.month) &&
      (date1.day == date2.day);

  static bool isToday(DateTime date) => isSameDay(date, DateTime.now());

  static int secFromMs(int ms) => ms ~/ msInSec;
}

extension DateExt on DateTime {
  bool isSameDay(DateTime date) =>
      (year == date.year) && (month == date.month) && (day == date.day);

  bool get isToday => isSameDay(DateTime.now());

  String get asMddString =>
      DateFormat().format(this).split(' ').take(2).join(' ');

  String get asMMddString =>
      DateFormat.yMd().format(this).split('.').take(2).join('.');
}

extension StringDateExt on String {
  String get asMddString => DateTime.parse(this).asMddString;

  int get hmsToSec {
    List<String> hms = split(':').reversed.toList();
    int seconds = 0;

    for (int i = 0; i < hms.length; i++) {
      int value = int.tryParse(hms[i]) ?? 0;
      seconds += value * (math.pow(60, i).toInt());
    }

    return seconds;
  }
}

extension IntTimeExtension on int {
  int get msToSec => this ~/ msInSec;

  String get secToHms {
    int hours = this ~/ secInHour;
    int minutes = (this % secInHour) ~/ secInMin;
    int seconds = this % secInMin;

    String formattedTime = '';
    if (hours > 0) {
      formattedTime += '${hours.timeFragment}:';
    }
    formattedTime += '${minutes.timeFragment}:${seconds.timeFragment}';

    return formattedTime;
  }

  String get timeFragment => toString().padLeft(2, '0');
}

const secInMin = 60;
const secInHour = secInMin * 60;

const msInSec = 1000;
const msInMin = msInSec * secInMin;
const msInHour = msInMin * 60;
