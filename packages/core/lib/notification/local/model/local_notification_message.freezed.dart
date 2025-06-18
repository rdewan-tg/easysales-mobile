// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_notification_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalNotificationMessage {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get payload => throw _privateConstructorUsedError;

  /// Create a copy of LocalNotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalNotificationMessageCopyWith<LocalNotificationMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalNotificationMessageCopyWith<$Res> {
  factory $LocalNotificationMessageCopyWith(LocalNotificationMessage value,
          $Res Function(LocalNotificationMessage) then) =
      _$LocalNotificationMessageCopyWithImpl<$Res, LocalNotificationMessage>;
  @useResult
  $Res call(
      {int id, String? title, String? body, String? imageUrl, String? payload});
}

/// @nodoc
class _$LocalNotificationMessageCopyWithImpl<$Res,
        $Val extends LocalNotificationMessage>
    implements $LocalNotificationMessageCopyWith<$Res> {
  _$LocalNotificationMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalNotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? imageUrl = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalNotificationMessageImplCopyWith<$Res>
    implements $LocalNotificationMessageCopyWith<$Res> {
  factory _$$LocalNotificationMessageImplCopyWith(
          _$LocalNotificationMessageImpl value,
          $Res Function(_$LocalNotificationMessageImpl) then) =
      __$$LocalNotificationMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String? title, String? body, String? imageUrl, String? payload});
}

/// @nodoc
class __$$LocalNotificationMessageImplCopyWithImpl<$Res>
    extends _$LocalNotificationMessageCopyWithImpl<$Res,
        _$LocalNotificationMessageImpl>
    implements _$$LocalNotificationMessageImplCopyWith<$Res> {
  __$$LocalNotificationMessageImplCopyWithImpl(
      _$LocalNotificationMessageImpl _value,
      $Res Function(_$LocalNotificationMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalNotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? imageUrl = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$LocalNotificationMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocalNotificationMessageImpl implements _LocalNotificationMessage {
  _$LocalNotificationMessageImpl(
      {required this.id, this.title, this.body, this.imageUrl, this.payload});

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? imageUrl;
  @override
  final String? payload;

  @override
  String toString() {
    return 'LocalNotificationMessage(id: $id, title: $title, body: $body, imageUrl: $imageUrl, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalNotificationMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, body, imageUrl, payload);

  /// Create a copy of LocalNotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalNotificationMessageImplCopyWith<_$LocalNotificationMessageImpl>
      get copyWith => __$$LocalNotificationMessageImplCopyWithImpl<
          _$LocalNotificationMessageImpl>(this, _$identity);
}

abstract class _LocalNotificationMessage implements LocalNotificationMessage {
  factory _LocalNotificationMessage(
      {required final int id,
      final String? title,
      final String? body,
      final String? imageUrl,
      final String? payload}) = _$LocalNotificationMessageImpl;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get imageUrl;
  @override
  String? get payload;

  /// Create a copy of LocalNotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalNotificationMessageImplCopyWith<_$LocalNotificationMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
