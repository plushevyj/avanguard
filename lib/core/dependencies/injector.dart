import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_standalone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../http/http.dart';
import 'notification_controller.dart';
import 'notifications.dart';
import 'observer.dart';

AppMetricaConfig get _config =>
    AppMetricaConfig(dotenv.env['APPMETRICA_KEY'] ?? '', logs: true);

Future<void> initializeDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Hive.initFlutter();
  Bloc.observer = Observer();
  GetIt.I.registerSingleton<Dio>(const Http().createClient());

  tz.initializeTimeZones();
  final locationName = await FlutterTimezone.getLocalTimezone();
  print(locationName);
  tz.setLocalLocation(tz.getLocation(locationName));
  // await Permission.notification.isGranted.then((value) {});

  GetIt.I
      .registerSingleton<FlutterLocalNotificationsPlugin>(initNotifications());
  // initNotifications2();
  Intl.systemLocale = await findSystemLocale();
  NotificationController.setEveryday();
  // AppMetrica.activate(_config);
}
