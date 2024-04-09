import 'package:flutter_background_service/flutter_background_service.dart';

void initializeService() {
  final service = FlutterBackgroundService();
  service.on('setNotifications').listen((event) {
    if (event!['action'] == 'setNotifications') {
      // Логика для настройки уведомлений
    }
  });

  // Запуск сервиса
  service.startService();
}
