import 'dart:convert';
import 'dart:io';

import 'package:common/logger/logger_provider.dart';
import 'package:core/core.dart';
import 'package:core/notification/local/model/local_notification_message.dart';
import 'package:core/route/app_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:timezone/timezone.dart' as tz;

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  // handle action
  debugPrint(
    ("Handling a background message: ${notificationResponse.payload}"),
  );
}

final localPushNotificationProvider = Provider<LocalPushNotification>((ref) {
  final localNotificationsPlugin = ref.watch(flutterLocalNotificationProvider);
  final logger = ref.watch(loggerProvider('LocalPushNotification'));
  final goRouter = ref.watch(goRouterProvider);

  return LocalPushNotification(localNotificationsPlugin, logger, goRouter);
});

class LocalPushNotification {
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin;
  final Logger _logger;
  final GoRouter _goRouter;

  LocalPushNotification(
    this._localNotificationsPlugin,
    this._logger,
    this._goRouter,
  ) {
    _init();
  }

  void _init() async {
    final androidPlugin = _localNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    const initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('ic_notification'),
      iOS: DarwinInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestCriticalPermission: false,
        requestSoundPermission: false,
      ),
    );

    if (Platform.isAndroid) {
      // request notification permission on Android 13 and above
      final isGranted =
          await androidPlugin?.requestNotificationsPermission() ?? false;

      _logger.info('is Android Notification Permission Granted: $isGranted');
    }

    // Creates a notification channel.
    // This method is only applicable to Android versions 8.0 or newer.
    await _localNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(_notificationChannelMax());

    // Initializes the plugin.
    // Call this method on application before using the plugin further.
    await _localNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        _logger.info(details.toString());
        _handleMessage(details.payload);
      },
      onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
    );
  }

  Future<bool> requestAlarmPermission() async {
    // For Android: Request exact alarm permission
    if (Platform.isAndroid) {
      final androidPlugin = _localNotificationsPlugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >();
      // Check if you still have permission from last time you asked (or false if you never asked)
      var hasPermission =
          await androidPlugin?.canScheduleExactNotifications() ?? false;
      if (!hasPermission) {
        // if not granted, request permission
        hasPermission =
            await androidPlugin?.requestExactAlarmsPermission() ?? false;
      }
      return hasPermission;
    }

    // For iOS: Request notification permissions
    if (Platform.isIOS) {
      try {
        // Re-initialize with permission requests enabled
        // This is a safer approach that works across all versions
        final bool? initialized = await _localNotificationsPlugin.initialize(
          const InitializationSettings(
            iOS: DarwinInitializationSettings(
              requestAlertPermission: true,
              requestBadgePermission: true,
              requestSoundPermission: true,
              requestCriticalPermission: true,
            ),
          ),
          // Maintain the same callback handlers
          onDidReceiveNotificationResponse: (details) {
            _logger.info(details.toString());
            _handleMessage(details.payload);
          },
          onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
        );

        _logger.info(
          'iOS notification permissions requested, initialization success: $initialized',
        );
        // Return the result of initialization (true if successful, false otherwise)
        return initialized ?? false;
      } catch (e) {
        _logger.severe('Error requesting iOS notification permissions: $e');
        return false;
      }
    }

    // For other platforms
    return false;
  }

  ///On Android, notification messages are sent to Notification
  ///Channels which are used to control how a notification is delivered.
  ///The default FCM channel used is hidden from users, however provides a "default" importance level.
  ///Heads up notifications require a "max" importance level.
  void showNotification(LocalNotificationMessage message) async {
    //final String largeIcon = await _base64EncodedImage(message.imageUrl ?? '');
    String? bigPicture;
    // check if the message contains an image
    if (message.imageUrl != null) {
      bigPicture = await _base64EncodedImage(message.imageUrl ?? '');
    }

    await _localNotificationsPlugin.show(
      message.id,
      message.title,
      message.body,
      NotificationDetails(
        android: _androidNotificationDetail(
          bigPicture != null
              ? BigPictureStyleInformation(
                  ByteArrayAndroidBitmap.fromBase64String(bigPicture),
                )
              : null,
        ),
        iOS: const DarwinNotificationDetails(),
      ),
      payload: message.payload,
    );
  }

  // schedulr notification
  void scheduleLocalNotification(
    tz.TZDateTime scheduledDate,
    String title,
    String body,
  ) async {
    // Returns the Android version of the plugin on Android devices, null everywhere else
    final androidPlugin = _localNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    // Check if you still have permission from last time you asked (or false if you never asked)
    // Null means you're not on Android
    var hasPermission =
        await androidPlugin?.canScheduleExactNotifications() ?? false;
    if (!hasPermission) {
      // Request permissions again and update the variable
      hasPermission =
          await androidPlugin?.requestExactAlarmsPermission() ?? false;
    }

    // You may have been denied permissions, so check the return value
    if (hasPermission) {
      await _localNotificationsPlugin.zonedSchedule(
        0,
        title,
        body,
        scheduledDate,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'easyhr_scheduled_notification_channel_id',
            'EasyHR Scheduled Notification',
            channelDescription:
                'This channel is used by EasyHR for scheduled notifications.',
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    }
  }

  /// Schedule a weekly notification on a specific day of the week and time
  ///
  /// Parameters:
  /// - [id]: Unique identifier for the notification
  /// - [title]: Title of the notification
  /// - [body]: Content of the notification
  /// - [dayOfWeek]: Day of the week (1-7, where 1 is Monday, 7 is Sunday)
  /// - [hour]: Hour of the day (0-23)
  /// - [minute]: Minute of the hour (0-59)
  ///
  /// Returns a Future<bool> indicating whether the notification was scheduled
  Future<bool> scheduleWeeklyNotification({
    required int id,
    required String title,
    required String body,
    required int dayOfWeek,
    required int hour,
    required int minute,
  }) async {
    // Validate inputs
    if (dayOfWeek < 1 || dayOfWeek > 7) {
      _logger.warning('Invalid day of week: $dayOfWeek. Must be between 1-7');
      return false;
    }

    if (hour < 0 || hour > 23) {
      _logger.warning('Invalid hour: $hour. Must be between 0-23');
      return false;
    }

    if (minute < 0 || minute > 59) {
      _logger.warning('Invalid minute: $minute. Must be between 0-59');
      return false;
    }

    // Check for alarm permissions
    var hasPermission = await requestAlarmPermission();

    if (!hasPermission) {
      _logger.warning('Alarm permission not granted');
      return false;
    }

    try {
      // Cancel any existing notification with this ID
      await _localNotificationsPlugin.cancel(id);

      // Calculate the next occurrence of the specified day at the specified time using timezone-aware dates
      final now = tz.TZDateTime.now(tz.local);

      // Convert day of week from 1-7 (where 1 is Monday) to 1-7 (where 1 is Monday, 7 is Sunday)
      // This matches DateTime's weekday property
      final targetWeekday = dayOfWeek;

      // Calculate days until the target day
      int daysUntilTarget = targetWeekday - now.weekday;
      if (daysUntilTarget <= 0) {
        daysUntilTarget +=
            7; // If today is the target day or later, get next week
      }

      // Create a timezone-aware date time for the next occurrence
      tz.TZDateTime scheduledDate = tz.TZDateTime(
        tz.local,
        now.year,
        now.month,
        now.day + daysUntilTarget,
        hour,
        minute,
      );

      // If the scheduled date is in the past, add a week
      if (scheduledDate.isBefore(now)) {
        scheduledDate = scheduledDate.add(const Duration(days: 7));
      }

      // Schedule the notification
      await _localNotificationsPlugin.zonedSchedule(
        id,
        title,
        body,
        scheduledDate,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'easyhr_periodic_notification_channel_id',
            'EasyHR Periodic Notification',
            channelDescription:
                'This channel is used by EasyHR for periodic notifications.',
          ),
          iOS: DarwinNotificationDetails(
            presentBadge: true,
            presentSound: true,
            presentAlert: true,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
      );

      return true;
    } catch (e) {
      _logger.severe('Error scheduling notification: $e');
      return false;
    }
  }

  void cancelAllLocalNotification() async {
    await _localNotificationsPlugin.cancelAll();
  }

  void cancelLocalNotification({int id = 0}) async {
    await _localNotificationsPlugin.cancel(id);
  }

  // Asynchronous function that takes a URL as input and returns a base64 encoded image string.
  Future<String> _base64EncodedImage(String url) async {
    final response = await Dio().get<List<int>>(
      url,
      options: Options(responseType: ResponseType.bytes),
    );
    final String base64Data = base64Encode(response.data ?? []);
    return base64Data;
  }

  // Generates Android notification details based on the provided style information.
  AndroidNotificationDetails _androidNotificationDetail(
    StyleInformation? styleInformation,
  ) {
    return AndroidNotificationDetails(
      'easyhr_general_notification_channel_id',
      'EasyHR General Notification',
      channelDescription:
          'This channel is used by EasyHR for general notifications.',
      importance: Importance.max,
      priority: Priority.max,
      channelShowBadge: true,
      styleInformation: styleInformation,
    );
  }

  // Creates and returns an Android notification channel with maximum importance.
  AndroidNotificationChannel _notificationChannelMax() {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'easyhr_high_importance_channel_id', // id
      'EasyHR High Importance Notifications', // title
      description:
          'This channel is used by EasyHR for important notifications.', // description
      importance: Importance.max,
    );

    return channel;
  }

  // Handle the given message payload, which is a nullable String.
  // It decodes the payload into a Map and checks if the 'link' key is present.
  // If it is, it retrieves the link and navigates using the _goRouter.
  void _handleMessage(String? payload) {
    final Map<String, dynamic> data =
        jsonDecode(payload ?? '') as Map<String, dynamic>;

    if (data['link'] != null) {
      final String link = data['link'] as String;
      _goRouter.go(link);
    } else {
      _goRouter.go('/');
    }
  }
}
