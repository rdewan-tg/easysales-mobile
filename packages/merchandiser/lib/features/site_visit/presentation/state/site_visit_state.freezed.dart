// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_visit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SiteVisitState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isCreated => throw _privateConstructorUsedError;
  bool get isUpdated => throw _privateConstructorUsedError;
  LatLng? get currentPosition => throw _privateConstructorUsedError;
  SiteVisitData? get createSiteVisitResponse =>
      throw _privateConstructorUsedError;
  SiteVisitData? get updateSiteVisitResponse =>
      throw _privateConstructorUsedError;
  String? get currentAddress => throw _privateConstructorUsedError;
  String? get timeNow => throw _privateConstructorUsedError;
  Map<String, String> get settings => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of SiteVisitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiteVisitStateCopyWith<SiteVisitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteVisitStateCopyWith<$Res> {
  factory $SiteVisitStateCopyWith(
    SiteVisitState value,
    $Res Function(SiteVisitState) then,
  ) = _$SiteVisitStateCopyWithImpl<$Res, SiteVisitState>;
  @useResult
  $Res call({
    bool isLoading,
    bool isCreated,
    bool isUpdated,
    LatLng? currentPosition,
    SiteVisitData? createSiteVisitResponse,
    SiteVisitData? updateSiteVisitResponse,
    String? currentAddress,
    String? timeNow,
    Map<String, String> settings,
    String? error,
  });

  $LatLngCopyWith<$Res>? get currentPosition;
  $SiteVisitDataCopyWith<$Res>? get createSiteVisitResponse;
  $SiteVisitDataCopyWith<$Res>? get updateSiteVisitResponse;
}

/// @nodoc
class _$SiteVisitStateCopyWithImpl<$Res, $Val extends SiteVisitState>
    implements $SiteVisitStateCopyWith<$Res> {
  _$SiteVisitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiteVisitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isCreated = null,
    Object? isUpdated = null,
    Object? currentPosition = freezed,
    Object? createSiteVisitResponse = freezed,
    Object? updateSiteVisitResponse = freezed,
    Object? currentAddress = freezed,
    Object? timeNow = freezed,
    Object? settings = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            isCreated: null == isCreated
                ? _value.isCreated
                : isCreated // ignore: cast_nullable_to_non_nullable
                      as bool,
            isUpdated: null == isUpdated
                ? _value.isUpdated
                : isUpdated // ignore: cast_nullable_to_non_nullable
                      as bool,
            currentPosition: freezed == currentPosition
                ? _value.currentPosition
                : currentPosition // ignore: cast_nullable_to_non_nullable
                      as LatLng?,
            createSiteVisitResponse: freezed == createSiteVisitResponse
                ? _value.createSiteVisitResponse
                : createSiteVisitResponse // ignore: cast_nullable_to_non_nullable
                      as SiteVisitData?,
            updateSiteVisitResponse: freezed == updateSiteVisitResponse
                ? _value.updateSiteVisitResponse
                : updateSiteVisitResponse // ignore: cast_nullable_to_non_nullable
                      as SiteVisitData?,
            currentAddress: freezed == currentAddress
                ? _value.currentAddress
                : currentAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            timeNow: freezed == timeNow
                ? _value.timeNow
                : timeNow // ignore: cast_nullable_to_non_nullable
                      as String?,
            settings: null == settings
                ? _value.settings
                : settings // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of SiteVisitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res>? get currentPosition {
    if (_value.currentPosition == null) {
      return null;
    }

    return $LatLngCopyWith<$Res>(_value.currentPosition!, (value) {
      return _then(_value.copyWith(currentPosition: value) as $Val);
    });
  }

  /// Create a copy of SiteVisitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SiteVisitDataCopyWith<$Res>? get createSiteVisitResponse {
    if (_value.createSiteVisitResponse == null) {
      return null;
    }

    return $SiteVisitDataCopyWith<$Res>(_value.createSiteVisitResponse!, (
      value,
    ) {
      return _then(_value.copyWith(createSiteVisitResponse: value) as $Val);
    });
  }

  /// Create a copy of SiteVisitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SiteVisitDataCopyWith<$Res>? get updateSiteVisitResponse {
    if (_value.updateSiteVisitResponse == null) {
      return null;
    }

    return $SiteVisitDataCopyWith<$Res>(_value.updateSiteVisitResponse!, (
      value,
    ) {
      return _then(_value.copyWith(updateSiteVisitResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SiteVisitStateImplCopyWith<$Res>
    implements $SiteVisitStateCopyWith<$Res> {
  factory _$$SiteVisitStateImplCopyWith(
    _$SiteVisitStateImpl value,
    $Res Function(_$SiteVisitStateImpl) then,
  ) = __$$SiteVisitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool isCreated,
    bool isUpdated,
    LatLng? currentPosition,
    SiteVisitData? createSiteVisitResponse,
    SiteVisitData? updateSiteVisitResponse,
    String? currentAddress,
    String? timeNow,
    Map<String, String> settings,
    String? error,
  });

  @override
  $LatLngCopyWith<$Res>? get currentPosition;
  @override
  $SiteVisitDataCopyWith<$Res>? get createSiteVisitResponse;
  @override
  $SiteVisitDataCopyWith<$Res>? get updateSiteVisitResponse;
}

/// @nodoc
class __$$SiteVisitStateImplCopyWithImpl<$Res>
    extends _$SiteVisitStateCopyWithImpl<$Res, _$SiteVisitStateImpl>
    implements _$$SiteVisitStateImplCopyWith<$Res> {
  __$$SiteVisitStateImplCopyWithImpl(
    _$SiteVisitStateImpl _value,
    $Res Function(_$SiteVisitStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SiteVisitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isCreated = null,
    Object? isUpdated = null,
    Object? currentPosition = freezed,
    Object? createSiteVisitResponse = freezed,
    Object? updateSiteVisitResponse = freezed,
    Object? currentAddress = freezed,
    Object? timeNow = freezed,
    Object? settings = null,
    Object? error = freezed,
  }) {
    return _then(
      _$SiteVisitStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        isCreated: null == isCreated
            ? _value.isCreated
            : isCreated // ignore: cast_nullable_to_non_nullable
                  as bool,
        isUpdated: null == isUpdated
            ? _value.isUpdated
            : isUpdated // ignore: cast_nullable_to_non_nullable
                  as bool,
        currentPosition: freezed == currentPosition
            ? _value.currentPosition
            : currentPosition // ignore: cast_nullable_to_non_nullable
                  as LatLng?,
        createSiteVisitResponse: freezed == createSiteVisitResponse
            ? _value.createSiteVisitResponse
            : createSiteVisitResponse // ignore: cast_nullable_to_non_nullable
                  as SiteVisitData?,
        updateSiteVisitResponse: freezed == updateSiteVisitResponse
            ? _value.updateSiteVisitResponse
            : updateSiteVisitResponse // ignore: cast_nullable_to_non_nullable
                  as SiteVisitData?,
        currentAddress: freezed == currentAddress
            ? _value.currentAddress
            : currentAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        timeNow: freezed == timeNow
            ? _value.timeNow
            : timeNow // ignore: cast_nullable_to_non_nullable
                  as String?,
        settings: null == settings
            ? _value._settings
            : settings // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SiteVisitStateImpl implements _SiteVisitState {
  _$SiteVisitStateImpl({
    this.isLoading = false,
    this.isCreated = false,
    this.isUpdated = false,
    this.currentPosition,
    this.createSiteVisitResponse,
    this.updateSiteVisitResponse,
    this.currentAddress,
    this.timeNow,
    final Map<String, String> settings = const {},
    this.error,
  }) : _settings = settings;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isCreated;
  @override
  @JsonKey()
  final bool isUpdated;
  @override
  final LatLng? currentPosition;
  @override
  final SiteVisitData? createSiteVisitResponse;
  @override
  final SiteVisitData? updateSiteVisitResponse;
  @override
  final String? currentAddress;
  @override
  final String? timeNow;
  final Map<String, String> _settings;
  @override
  @JsonKey()
  Map<String, String> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'SiteVisitState(isLoading: $isLoading, isCreated: $isCreated, isUpdated: $isUpdated, currentPosition: $currentPosition, createSiteVisitResponse: $createSiteVisitResponse, updateSiteVisitResponse: $updateSiteVisitResponse, currentAddress: $currentAddress, timeNow: $timeNow, settings: $settings, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteVisitStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isCreated, isCreated) ||
                other.isCreated == isCreated) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(
                  other.createSiteVisitResponse,
                  createSiteVisitResponse,
                ) ||
                other.createSiteVisitResponse == createSiteVisitResponse) &&
            (identical(
                  other.updateSiteVisitResponse,
                  updateSiteVisitResponse,
                ) ||
                other.updateSiteVisitResponse == updateSiteVisitResponse) &&
            (identical(other.currentAddress, currentAddress) ||
                other.currentAddress == currentAddress) &&
            (identical(other.timeNow, timeNow) || other.timeNow == timeNow) &&
            const DeepCollectionEquality().equals(other._settings, _settings) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isCreated,
    isUpdated,
    currentPosition,
    createSiteVisitResponse,
    updateSiteVisitResponse,
    currentAddress,
    timeNow,
    const DeepCollectionEquality().hash(_settings),
    error,
  );

  /// Create a copy of SiteVisitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteVisitStateImplCopyWith<_$SiteVisitStateImpl> get copyWith =>
      __$$SiteVisitStateImplCopyWithImpl<_$SiteVisitStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SiteVisitState implements SiteVisitState {
  factory _SiteVisitState({
    final bool isLoading,
    final bool isCreated,
    final bool isUpdated,
    final LatLng? currentPosition,
    final SiteVisitData? createSiteVisitResponse,
    final SiteVisitData? updateSiteVisitResponse,
    final String? currentAddress,
    final String? timeNow,
    final Map<String, String> settings,
    final String? error,
  }) = _$SiteVisitStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isCreated;
  @override
  bool get isUpdated;
  @override
  LatLng? get currentPosition;
  @override
  SiteVisitData? get createSiteVisitResponse;
  @override
  SiteVisitData? get updateSiteVisitResponse;
  @override
  String? get currentAddress;
  @override
  String? get timeNow;
  @override
  Map<String, String> get settings;
  @override
  String? get error;

  /// Create a copy of SiteVisitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteVisitStateImplCopyWith<_$SiteVisitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LatLng {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  /// Create a copy of LatLng
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LatLngCopyWith<LatLng> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngCopyWith<$Res> {
  factory $LatLngCopyWith(LatLng value, $Res Function(LatLng) then) =
      _$LatLngCopyWithImpl<$Res, LatLng>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LatLngCopyWithImpl<$Res, $Val extends LatLng>
    implements $LatLngCopyWith<$Res> {
  _$LatLngCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LatLng
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? latitude = null, Object? longitude = null}) {
    return _then(
      _value.copyWith(
            latitude: null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double,
            longitude: null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LatLngImplCopyWith<$Res> implements $LatLngCopyWith<$Res> {
  factory _$$LatLngImplCopyWith(
    _$LatLngImpl value,
    $Res Function(_$LatLngImpl) then,
  ) = __$$LatLngImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$LatLngImplCopyWithImpl<$Res>
    extends _$LatLngCopyWithImpl<$Res, _$LatLngImpl>
    implements _$$LatLngImplCopyWith<$Res> {
  __$$LatLngImplCopyWithImpl(
    _$LatLngImpl _value,
    $Res Function(_$LatLngImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LatLng
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? latitude = null, Object? longitude = null}) {
    return _then(
      _$LatLngImpl(
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$LatLngImpl implements _LatLng {
  const _$LatLngImpl({required this.latitude, required this.longitude});

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'LatLng(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatLngImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of LatLng
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LatLngImplCopyWith<_$LatLngImpl> get copyWith =>
      __$$LatLngImplCopyWithImpl<_$LatLngImpl>(this, _$identity);
}

abstract class _LatLng implements LatLng {
  const factory _LatLng({
    required final double latitude,
    required final double longitude,
  }) = _$LatLngImpl;

  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of LatLng
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LatLngImplCopyWith<_$LatLngImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
