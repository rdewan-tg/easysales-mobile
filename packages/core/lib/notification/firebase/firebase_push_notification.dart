import 'dart:convert';

import 'package:common/logger/logger_provider.dart';
import 'package:core/core.dart';
import 'package:core/notification/local/local_push_notification.dart';
import 'package:core/notification/local/model/local_notification_message.dart';
import 'package:core/route/app_router.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:logging/logging.dart';

final firebasePushNotificationProvider =
    Provider<FirebasePushNotification>((ref) {
  final messaging = ref.watch(firebaseMessagingProvider);
  final localPushNotification = ref.watch(localPushNotificationProvider);
  final logger = ref.watch(loggerProvider('FirebasePushNotification'));
  final goRouter = ref.watch(goRouterProvider);

  return FirebasePushNotification(
    messaging,
    localPushNotification,
    goRouter,
    logger,
  );
});

class FirebasePushNotification {
  final FirebaseMessaging _messaging;
  final LocalPushNotification _localPushNotification;
  final GoRouter _goRouter;
  final Logger _logger;

  FirebasePushNotification(
    this._messaging,
    this._localPushNotification,
    this._goRouter,
    this._logger,
  ) {
    _init();
    _onFirebaseMessageReceived();
    _setupInteractedMessage();
  }

  void _init() async {
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      _logger.info('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      _logger.info('User granted provisional permission');
    } else {
      _logger.info('User declined or has not accepted permission');
    }

    /// Foreground notifications (also known as "heads up")
    /// are those which display for a brief period of time above existing applications,
    /// and should be used for important events.
    /// Android & iOS have different behaviors when handling notifications whilst applications
    /// are in the foreground so keep this in mind whilst developing.
    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    ///Handling messages whilst your application is in the background is a little different.
    ///Messages can be handled via the onBackgroundMessage handler.
    ///When received, an isolate is spawned (Android only, iOS/macOS does not require a separate isolate)
    ///allowing you to handle messages even when your application is not running.
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  }

  // A function that listens for Firebase messages and shows local push notifications.
  void _onFirebaseMessageReceived() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      Map<String, dynamic> data = message.data;

      _logger.info(
        'RemoteMessage Notification: ${notification?.android?.imageUrl}',
      );
      _logger
          .info('RemoteMessage Notification: ${notification?.apple?.imageUrl}');
      _logger.info('RemoteMessage Data: $data');

      if (notification != null && android != null) {
        _localPushNotification.showNotification(
          LocalNotificationMessage(
            id: notification.hashCode,
            title: notification.title,
            body: notification.body,
            imageUrl: android.imageUrl,
            payload: jsonEncode(data),
          ),
        );
      }
    });
  }

  // Get any messages which caused the application to open from
  // a terminated state.
  // If the message also contains a data property with a "type" of "chat",
  // navigate to a chat screen
  // Also handle any interaction when the app is in the background via a
  // Stream listener
  Future<void> _setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage = await _messaging.getInitialMessage();
    _logger
        .info('initialMessage Notification: ${initialMessage?.notification}');
    _logger.info('initialMessage Data: ${initialMessage?.data}');

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    if (message.data['link'] != null) {
      final String link = message.data['link'];
      _goRouter.go(link);
    } else {
      _goRouter.go('/');
    }
  }

  /// Returns the default FCM token for this device.
  Future<String?> getFirebaseToken() async {
    try {
      return await _messaging.getToken();
    } catch (e) {
      _logger.warning('Failed to get Firebase token: $e');
      return null;
    }
  }

  Future<void> subscribeToTopic(String topic) async {
    await _messaging.subscribeToTopic(topic);
  }

  /// On iOS/MacOS, it is possible to get the users APNs token.
  /// This may be required if you want to send messages to your
  /// iOS/MacOS devices without using the FCM service.
  Future<String?> getAPNSToken() async {
    return await _messaging.getAPNSToken();
  }

  Future<bool> getIsPermissionGranted() async {
    final settings = await getNotificationSettings();
    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }

  /// Returns the current [NotificationSettings].
  /// To request permissions, call [requestPermission].
  Future<NotificationSettings> getNotificationSettings() async {
    return await _messaging.getNotificationSettings();
  }
}
