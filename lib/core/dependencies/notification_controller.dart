import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:timezone/timezone.dart' as tz;

abstract class NotificationController {
  static final flutterLocalNotificationsPlugin =
      GetIt.I.get<FlutterLocalNotificationsPlugin>();

  static const _morningId = 0;
  static const _eveningId = 1;

  static const _morningMessageTitle = 'Пришло время Твоего Дневника!';
  static const _morningMessageBody = '☀️ Доброе утро! Как спалось?\n'
      'Не забудь отметить в дневнике свое состояние и настроение';

  static const _eveningMessageTitle = 'Отметь свою работу сегодня!';
  static const _eveningMessageBody = '💪 Был насыщеный день!\n'
      'Зафиксируй в дневнике свои успехи и трудности, чтобы не забыть детали';

  static const _androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'Diary id',
    'Diary channel',
    icon: 'notification_icon',
    importance: Importance.max,
    priority: Priority.high,
  );

  static const _platformChannelSpecifics = NotificationDetails(
    android: _androidPlatformChannelSpecifics,
    iOS: DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    ),
  );

  static void setMorningNotification(bool isTomorrow, bool repeat) {
    flutterLocalNotificationsPlugin.zonedSchedule(
      _morningId,
      _morningMessageTitle,
      _morningMessageBody,
      _getNextScheduleDate(8, isTomorrow),
      _platformChannelSpecifics,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents: repeat ? DateTimeComponents.time : null,
    );
  }

  static void setEveningNotification(bool isTomorrow, bool repeat) {
    flutterLocalNotificationsPlugin.zonedSchedule(
      _eveningId,
      _eveningMessageTitle,
      _eveningMessageBody,
      _getNextScheduleDate(20, isTomorrow),
      _platformChannelSpecifics,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents: repeat ? DateTimeComponents.time : null,
    );
  }

  static tz.TZDateTime _getNextScheduleDate(int hour, bool isTomorrow) {
    final now = tz.TZDateTime.now(tz.local);
    var date = tz.TZDateTime(tz.local, now.year, now.month, now.day, hour);
    if (date.isBefore(now) || isTomorrow) {
      date = date.add(const Duration(days: 1));
    }

    return date;
  }

  // void setMorningNotification2() {
  //   AwesomeNotifications().createNotification(
  //     schedule: ,
  //       content: NotificationContent(
  //         id: 10,
  //         channelKey: 'basic_channel',
  //         actionType: ActionType.Default,
  //         title: 'Hello World!',
  //         body: 'This is my first notification!',
  //       )
  //   );
  // }

  static void setEveryday() {
    setMorningNotification(false, true);
    setEveningNotification(false, true);
  }
}
