import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_notification_message.freezed.dart';

@freezed
class LocalNotificationMessage with _$LocalNotificationMessage {
  factory LocalNotificationMessage({
    required int id,
    String? title,
    String? body,
    String? imageUrl,
    String? payload,
  }) = _LocalNotificationMessage;
}
