// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeviceSettingResponse _$DeviceSettingResponseFromJson(
  Map<String, dynamic> json,
) {
  return _DeviceSettingResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceSettingResponse {
  String get status => throw _privateConstructorUsedError;
  DeviceSettingData get data => throw _privateConstructorUsedError;

  /// Serializes this DeviceSettingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceSettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceSettingResponseCopyWith<DeviceSettingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSettingResponseCopyWith<$Res> {
  factory $DeviceSettingResponseCopyWith(
    DeviceSettingResponse value,
    $Res Function(DeviceSettingResponse) then,
  ) = _$DeviceSettingResponseCopyWithImpl<$Res, DeviceSettingResponse>;
  @useResult
  $Res call({String status, DeviceSettingData data});

  $DeviceSettingDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DeviceSettingResponseCopyWithImpl<
  $Res,
  $Val extends DeviceSettingResponse
>
    implements $DeviceSettingResponseCopyWith<$Res> {
  _$DeviceSettingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceSettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as DeviceSettingData,
          )
          as $Val,
    );
  }

  /// Create a copy of DeviceSettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceSettingDataCopyWith<$Res> get data {
    return $DeviceSettingDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceSettingResponseImplCopyWith<$Res>
    implements $DeviceSettingResponseCopyWith<$Res> {
  factory _$$DeviceSettingResponseImplCopyWith(
    _$DeviceSettingResponseImpl value,
    $Res Function(_$DeviceSettingResponseImpl) then,
  ) = __$$DeviceSettingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, DeviceSettingData data});

  @override
  $DeviceSettingDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeviceSettingResponseImplCopyWithImpl<$Res>
    extends
        _$DeviceSettingResponseCopyWithImpl<$Res, _$DeviceSettingResponseImpl>
    implements _$$DeviceSettingResponseImplCopyWith<$Res> {
  __$$DeviceSettingResponseImplCopyWithImpl(
    _$DeviceSettingResponseImpl _value,
    $Res Function(_$DeviceSettingResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeviceSettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$DeviceSettingResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as DeviceSettingData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceSettingResponseImpl implements _DeviceSettingResponse {
  const _$DeviceSettingResponseImpl({required this.status, required this.data});

  factory _$DeviceSettingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceSettingResponseImplFromJson(json);

  @override
  final String status;
  @override
  final DeviceSettingData data;

  @override
  String toString() {
    return 'DeviceSettingResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceSettingResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of DeviceSettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceSettingResponseImplCopyWith<_$DeviceSettingResponseImpl>
  get copyWith =>
      __$$DeviceSettingResponseImplCopyWithImpl<_$DeviceSettingResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceSettingResponseImplToJson(this);
  }
}

abstract class _DeviceSettingResponse implements DeviceSettingResponse {
  const factory _DeviceSettingResponse({
    required final String status,
    required final DeviceSettingData data,
  }) = _$DeviceSettingResponseImpl;

  factory _DeviceSettingResponse.fromJson(Map<String, dynamic> json) =
      _$DeviceSettingResponseImpl.fromJson;

  @override
  String get status;
  @override
  DeviceSettingData get data;

  /// Create a copy of DeviceSettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceSettingResponseImplCopyWith<_$DeviceSettingResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DeviceSettingData _$DeviceSettingDataFromJson(Map<String, dynamic> json) {
  return _DeviceSettingData.fromJson(json);
}

/// @nodoc
mixin _$DeviceSettingData {
  int get id => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get salesPersonCode => throw _privateConstructorUsedError;
  String get orderNumberFormat => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get companyId => throw _privateConstructorUsedError;

  /// Serializes this DeviceSettingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceSettingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceSettingDataCopyWith<DeviceSettingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSettingDataCopyWith<$Res> {
  factory $DeviceSettingDataCopyWith(
    DeviceSettingData value,
    $Res Function(DeviceSettingData) then,
  ) = _$DeviceSettingDataCopyWithImpl<$Res, DeviceSettingData>;
  @useResult
  $Res call({
    int id,
    String deviceId,
    int userId,
    String userName,
    String salesPersonCode,
    String orderNumberFormat,
    DateTime createAt,
    DateTime updatedAt,
    int companyId,
  });
}

/// @nodoc
class _$DeviceSettingDataCopyWithImpl<$Res, $Val extends DeviceSettingData>
    implements $DeviceSettingDataCopyWith<$Res> {
  _$DeviceSettingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceSettingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? userId = null,
    Object? userName = null,
    Object? salesPersonCode = null,
    Object? orderNumberFormat = null,
    Object? createAt = null,
    Object? updatedAt = null,
    Object? companyId = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            deviceId: null == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            userName: null == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String,
            salesPersonCode: null == salesPersonCode
                ? _value.salesPersonCode
                : salesPersonCode // ignore: cast_nullable_to_non_nullable
                      as String,
            orderNumberFormat: null == orderNumberFormat
                ? _value.orderNumberFormat
                : orderNumberFormat // ignore: cast_nullable_to_non_nullable
                      as String,
            createAt: null == createAt
                ? _value.createAt
                : createAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeviceSettingDataImplCopyWith<$Res>
    implements $DeviceSettingDataCopyWith<$Res> {
  factory _$$DeviceSettingDataImplCopyWith(
    _$DeviceSettingDataImpl value,
    $Res Function(_$DeviceSettingDataImpl) then,
  ) = __$$DeviceSettingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String deviceId,
    int userId,
    String userName,
    String salesPersonCode,
    String orderNumberFormat,
    DateTime createAt,
    DateTime updatedAt,
    int companyId,
  });
}

/// @nodoc
class __$$DeviceSettingDataImplCopyWithImpl<$Res>
    extends _$DeviceSettingDataCopyWithImpl<$Res, _$DeviceSettingDataImpl>
    implements _$$DeviceSettingDataImplCopyWith<$Res> {
  __$$DeviceSettingDataImplCopyWithImpl(
    _$DeviceSettingDataImpl _value,
    $Res Function(_$DeviceSettingDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeviceSettingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? userId = null,
    Object? userName = null,
    Object? salesPersonCode = null,
    Object? orderNumberFormat = null,
    Object? createAt = null,
    Object? updatedAt = null,
    Object? companyId = null,
  }) {
    return _then(
      _$DeviceSettingDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        deviceId: null == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        userName: null == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String,
        salesPersonCode: null == salesPersonCode
            ? _value.salesPersonCode
            : salesPersonCode // ignore: cast_nullable_to_non_nullable
                  as String,
        orderNumberFormat: null == orderNumberFormat
            ? _value.orderNumberFormat
            : orderNumberFormat // ignore: cast_nullable_to_non_nullable
                  as String,
        createAt: null == createAt
            ? _value.createAt
            : createAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceSettingDataImpl implements _DeviceSettingData {
  const _$DeviceSettingDataImpl({
    required this.id,
    required this.deviceId,
    required this.userId,
    required this.userName,
    required this.salesPersonCode,
    required this.orderNumberFormat,
    required this.createAt,
    required this.updatedAt,
    required this.companyId,
  });

  factory _$DeviceSettingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceSettingDataImplFromJson(json);

  @override
  final int id;
  @override
  final String deviceId;
  @override
  final int userId;
  @override
  final String userName;
  @override
  final String salesPersonCode;
  @override
  final String orderNumberFormat;
  @override
  final DateTime createAt;
  @override
  final DateTime updatedAt;
  @override
  final int companyId;

  @override
  String toString() {
    return 'DeviceSettingData(id: $id, deviceId: $deviceId, userId: $userId, userName: $userName, salesPersonCode: $salesPersonCode, orderNumberFormat: $orderNumberFormat, createAt: $createAt, updatedAt: $updatedAt, companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceSettingDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.salesPersonCode, salesPersonCode) ||
                other.salesPersonCode == salesPersonCode) &&
            (identical(other.orderNumberFormat, orderNumberFormat) ||
                other.orderNumberFormat == orderNumberFormat) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    deviceId,
    userId,
    userName,
    salesPersonCode,
    orderNumberFormat,
    createAt,
    updatedAt,
    companyId,
  );

  /// Create a copy of DeviceSettingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceSettingDataImplCopyWith<_$DeviceSettingDataImpl> get copyWith =>
      __$$DeviceSettingDataImplCopyWithImpl<_$DeviceSettingDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceSettingDataImplToJson(this);
  }
}

abstract class _DeviceSettingData implements DeviceSettingData {
  const factory _DeviceSettingData({
    required final int id,
    required final String deviceId,
    required final int userId,
    required final String userName,
    required final String salesPersonCode,
    required final String orderNumberFormat,
    required final DateTime createAt,
    required final DateTime updatedAt,
    required final int companyId,
  }) = _$DeviceSettingDataImpl;

  factory _DeviceSettingData.fromJson(Map<String, dynamic> json) =
      _$DeviceSettingDataImpl.fromJson;

  @override
  int get id;
  @override
  String get deviceId;
  @override
  int get userId;
  @override
  String get userName;
  @override
  String get salesPersonCode;
  @override
  String get orderNumberFormat;
  @override
  DateTime get createAt;
  @override
  DateTime get updatedAt;
  @override
  int get companyId;

  /// Create a copy of DeviceSettingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceSettingDataImplCopyWith<_$DeviceSettingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
