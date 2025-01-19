// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'capture_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CaptureImageState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isImageUploaded => throw _privateConstructorUsedError;
  Map<String, String> get settings => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  /// Create a copy of CaptureImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CaptureImageStateCopyWith<CaptureImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaptureImageStateCopyWith<$Res> {
  factory $CaptureImageStateCopyWith(
          CaptureImageState value, $Res Function(CaptureImageState) then) =
      _$CaptureImageStateCopyWithImpl<$Res, CaptureImageState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isImageUploaded,
      Map<String, String> settings,
      String? errorMsg});
}

/// @nodoc
class _$CaptureImageStateCopyWithImpl<$Res, $Val extends CaptureImageState>
    implements $CaptureImageStateCopyWith<$Res> {
  _$CaptureImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CaptureImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isImageUploaded = null,
    Object? settings = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageUploaded: null == isImageUploaded
          ? _value.isImageUploaded
          : isImageUploaded // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaptureImageStateImplCopyWith<$Res>
    implements $CaptureImageStateCopyWith<$Res> {
  factory _$$CaptureImageStateImplCopyWith(_$CaptureImageStateImpl value,
          $Res Function(_$CaptureImageStateImpl) then) =
      __$$CaptureImageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isImageUploaded,
      Map<String, String> settings,
      String? errorMsg});
}

/// @nodoc
class __$$CaptureImageStateImplCopyWithImpl<$Res>
    extends _$CaptureImageStateCopyWithImpl<$Res, _$CaptureImageStateImpl>
    implements _$$CaptureImageStateImplCopyWith<$Res> {
  __$$CaptureImageStateImplCopyWithImpl(_$CaptureImageStateImpl _value,
      $Res Function(_$CaptureImageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CaptureImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isImageUploaded = null,
    Object? settings = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_$CaptureImageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageUploaded: null == isImageUploaded
          ? _value.isImageUploaded
          : isImageUploaded // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CaptureImageStateImpl implements _CaptureImageState {
  _$CaptureImageStateImpl(
      {this.isLoading = false,
      this.isImageUploaded = false,
      final Map<String, String> settings = const {},
      this.errorMsg})
      : _settings = settings;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isImageUploaded;
  final Map<String, String> _settings;
  @override
  @JsonKey()
  Map<String, String> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'CaptureImageState(isLoading: $isLoading, isImageUploaded: $isImageUploaded, settings: $settings, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptureImageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isImageUploaded, isImageUploaded) ||
                other.isImageUploaded == isImageUploaded) &&
            const DeepCollectionEquality().equals(other._settings, _settings) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isImageUploaded,
      const DeepCollectionEquality().hash(_settings), errorMsg);

  /// Create a copy of CaptureImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptureImageStateImplCopyWith<_$CaptureImageStateImpl> get copyWith =>
      __$$CaptureImageStateImplCopyWithImpl<_$CaptureImageStateImpl>(
          this, _$identity);
}

abstract class _CaptureImageState implements CaptureImageState {
  factory _CaptureImageState(
      {final bool isLoading,
      final bool isImageUploaded,
      final Map<String, String> settings,
      final String? errorMsg}) = _$CaptureImageStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isImageUploaded;
  @override
  Map<String, String> get settings;
  @override
  String? get errorMsg;

  /// Create a copy of CaptureImageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CaptureImageStateImplCopyWith<_$CaptureImageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
