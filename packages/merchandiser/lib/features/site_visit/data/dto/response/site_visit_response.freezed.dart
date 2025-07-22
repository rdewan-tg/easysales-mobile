// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_visit_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SiteVisitResponse _$SiteVisitResponseFromJson(Map<String, dynamic> json) {
  return _SiteVisitResponse.fromJson(json);
}

/// @nodoc
mixin _$SiteVisitResponse {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  SiteVisitData get data => throw _privateConstructorUsedError;

  /// Serializes this SiteVisitResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiteVisitResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiteVisitResponseCopyWith<SiteVisitResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteVisitResponseCopyWith<$Res> {
  factory $SiteVisitResponseCopyWith(
    SiteVisitResponse value,
    $Res Function(SiteVisitResponse) then,
  ) = _$SiteVisitResponseCopyWithImpl<$Res, SiteVisitResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'status') String status,
    @JsonKey(name: 'data') SiteVisitData data,
  });

  $SiteVisitDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SiteVisitResponseCopyWithImpl<$Res, $Val extends SiteVisitResponse>
    implements $SiteVisitResponseCopyWith<$Res> {
  _$SiteVisitResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiteVisitResponse
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
                      as SiteVisitData,
          )
          as $Val,
    );
  }

  /// Create a copy of SiteVisitResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SiteVisitDataCopyWith<$Res> get data {
    return $SiteVisitDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SiteVisitResponseImplCopyWith<$Res>
    implements $SiteVisitResponseCopyWith<$Res> {
  factory _$$SiteVisitResponseImplCopyWith(
    _$SiteVisitResponseImpl value,
    $Res Function(_$SiteVisitResponseImpl) then,
  ) = __$$SiteVisitResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') String status,
    @JsonKey(name: 'data') SiteVisitData data,
  });

  @override
  $SiteVisitDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SiteVisitResponseImplCopyWithImpl<$Res>
    extends _$SiteVisitResponseCopyWithImpl<$Res, _$SiteVisitResponseImpl>
    implements _$$SiteVisitResponseImplCopyWith<$Res> {
  __$$SiteVisitResponseImplCopyWithImpl(
    _$SiteVisitResponseImpl _value,
    $Res Function(_$SiteVisitResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SiteVisitResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$SiteVisitResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as SiteVisitData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SiteVisitResponseImpl implements _SiteVisitResponse {
  const _$SiteVisitResponseImpl({
    @JsonKey(name: 'status') required this.status,
    @JsonKey(name: 'data') required this.data,
  });

  factory _$SiteVisitResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteVisitResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'data')
  final SiteVisitData data;

  @override
  String toString() {
    return 'SiteVisitResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteVisitResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of SiteVisitResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteVisitResponseImplCopyWith<_$SiteVisitResponseImpl> get copyWith =>
      __$$SiteVisitResponseImplCopyWithImpl<_$SiteVisitResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteVisitResponseImplToJson(this);
  }
}

abstract class _SiteVisitResponse implements SiteVisitResponse {
  const factory _SiteVisitResponse({
    @JsonKey(name: 'status') required final String status,
    @JsonKey(name: 'data') required final SiteVisitData data,
  }) = _$SiteVisitResponseImpl;

  factory _SiteVisitResponse.fromJson(Map<String, dynamic> json) =
      _$SiteVisitResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'data')
  SiteVisitData get data;

  /// Create a copy of SiteVisitResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteVisitResponseImplCopyWith<_$SiteVisitResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SiteVisitData _$SiteVisitDataFromJson(Map<String, dynamic> json) {
  return _SiteVisitData.fromJson(json);
}

/// @nodoc
mixin _$SiteVisitData {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceId')
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'salesPersonCode')
  String get salesPersonCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'salesPersonName')
  String get salesPersonName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerId')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerName')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerAddress')
  String get customerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerChain')
  String get customerChain => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerLatitude')
  String get customerLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerLongitude')
  String get customerLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeIn')
  String get timeIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeOut')
  String? get timeOut => throw _privateConstructorUsedError;
  @JsonKey(name: 'durationInOutlet')
  int get durationInOutlet => throw _privateConstructorUsedError;
  @JsonKey(name: 'areaIds')
  List<int> get areaIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'companyId')
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SiteVisitData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiteVisitData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiteVisitDataCopyWith<SiteVisitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteVisitDataCopyWith<$Res> {
  factory $SiteVisitDataCopyWith(
    SiteVisitData value,
    $Res Function(SiteVisitData) then,
  ) = _$SiteVisitDataCopyWithImpl<$Res, SiteVisitData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'userId') int userId,
    @JsonKey(name: 'deviceId') String deviceId,
    @JsonKey(name: 'salesPersonCode') String salesPersonCode,
    @JsonKey(name: 'salesPersonName') String salesPersonName,
    @JsonKey(name: 'customerId') String customerId,
    @JsonKey(name: 'customerName') String customerName,
    @JsonKey(name: 'customerAddress') String customerAddress,
    @JsonKey(name: 'customerChain') String customerChain,
    @JsonKey(name: 'customerLatitude') String customerLatitude,
    @JsonKey(name: 'customerLongitude') String customerLongitude,
    @JsonKey(name: 'timeIn') String timeIn,
    @JsonKey(name: 'timeOut') String? timeOut,
    @JsonKey(name: 'durationInOutlet') int durationInOutlet,
    @JsonKey(name: 'areaIds') List<int> areaIds,
    @JsonKey(name: 'companyId') int companyId,
    @JsonKey(name: 'createdAt') String createdAt,
    @JsonKey(name: 'updatedAt') String updatedAt,
  });
}

/// @nodoc
class _$SiteVisitDataCopyWithImpl<$Res, $Val extends SiteVisitData>
    implements $SiteVisitDataCopyWith<$Res> {
  _$SiteVisitDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiteVisitData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? deviceId = null,
    Object? salesPersonCode = null,
    Object? salesPersonName = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAddress = null,
    Object? customerChain = null,
    Object? customerLatitude = null,
    Object? customerLongitude = null,
    Object? timeIn = null,
    Object? timeOut = freezed,
    Object? durationInOutlet = null,
    Object? areaIds = null,
    Object? companyId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            deviceId: null == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            salesPersonCode: null == salesPersonCode
                ? _value.salesPersonCode
                : salesPersonCode // ignore: cast_nullable_to_non_nullable
                      as String,
            salesPersonName: null == salesPersonName
                ? _value.salesPersonName
                : salesPersonName // ignore: cast_nullable_to_non_nullable
                      as String,
            customerId: null == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                      as String,
            customerName: null == customerName
                ? _value.customerName
                : customerName // ignore: cast_nullable_to_non_nullable
                      as String,
            customerAddress: null == customerAddress
                ? _value.customerAddress
                : customerAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            customerChain: null == customerChain
                ? _value.customerChain
                : customerChain // ignore: cast_nullable_to_non_nullable
                      as String,
            customerLatitude: null == customerLatitude
                ? _value.customerLatitude
                : customerLatitude // ignore: cast_nullable_to_non_nullable
                      as String,
            customerLongitude: null == customerLongitude
                ? _value.customerLongitude
                : customerLongitude // ignore: cast_nullable_to_non_nullable
                      as String,
            timeIn: null == timeIn
                ? _value.timeIn
                : timeIn // ignore: cast_nullable_to_non_nullable
                      as String,
            timeOut: freezed == timeOut
                ? _value.timeOut
                : timeOut // ignore: cast_nullable_to_non_nullable
                      as String?,
            durationInOutlet: null == durationInOutlet
                ? _value.durationInOutlet
                : durationInOutlet // ignore: cast_nullable_to_non_nullable
                      as int,
            areaIds: null == areaIds
                ? _value.areaIds
                : areaIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SiteVisitDataImplCopyWith<$Res>
    implements $SiteVisitDataCopyWith<$Res> {
  factory _$$SiteVisitDataImplCopyWith(
    _$SiteVisitDataImpl value,
    $Res Function(_$SiteVisitDataImpl) then,
  ) = __$$SiteVisitDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'userId') int userId,
    @JsonKey(name: 'deviceId') String deviceId,
    @JsonKey(name: 'salesPersonCode') String salesPersonCode,
    @JsonKey(name: 'salesPersonName') String salesPersonName,
    @JsonKey(name: 'customerId') String customerId,
    @JsonKey(name: 'customerName') String customerName,
    @JsonKey(name: 'customerAddress') String customerAddress,
    @JsonKey(name: 'customerChain') String customerChain,
    @JsonKey(name: 'customerLatitude') String customerLatitude,
    @JsonKey(name: 'customerLongitude') String customerLongitude,
    @JsonKey(name: 'timeIn') String timeIn,
    @JsonKey(name: 'timeOut') String? timeOut,
    @JsonKey(name: 'durationInOutlet') int durationInOutlet,
    @JsonKey(name: 'areaIds') List<int> areaIds,
    @JsonKey(name: 'companyId') int companyId,
    @JsonKey(name: 'createdAt') String createdAt,
    @JsonKey(name: 'updatedAt') String updatedAt,
  });
}

/// @nodoc
class __$$SiteVisitDataImplCopyWithImpl<$Res>
    extends _$SiteVisitDataCopyWithImpl<$Res, _$SiteVisitDataImpl>
    implements _$$SiteVisitDataImplCopyWith<$Res> {
  __$$SiteVisitDataImplCopyWithImpl(
    _$SiteVisitDataImpl _value,
    $Res Function(_$SiteVisitDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SiteVisitData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? deviceId = null,
    Object? salesPersonCode = null,
    Object? salesPersonName = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAddress = null,
    Object? customerChain = null,
    Object? customerLatitude = null,
    Object? customerLongitude = null,
    Object? timeIn = null,
    Object? timeOut = freezed,
    Object? durationInOutlet = null,
    Object? areaIds = null,
    Object? companyId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$SiteVisitDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        deviceId: null == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        salesPersonCode: null == salesPersonCode
            ? _value.salesPersonCode
            : salesPersonCode // ignore: cast_nullable_to_non_nullable
                  as String,
        salesPersonName: null == salesPersonName
            ? _value.salesPersonName
            : salesPersonName // ignore: cast_nullable_to_non_nullable
                  as String,
        customerId: null == customerId
            ? _value.customerId
            : customerId // ignore: cast_nullable_to_non_nullable
                  as String,
        customerName: null == customerName
            ? _value.customerName
            : customerName // ignore: cast_nullable_to_non_nullable
                  as String,
        customerAddress: null == customerAddress
            ? _value.customerAddress
            : customerAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        customerChain: null == customerChain
            ? _value.customerChain
            : customerChain // ignore: cast_nullable_to_non_nullable
                  as String,
        customerLatitude: null == customerLatitude
            ? _value.customerLatitude
            : customerLatitude // ignore: cast_nullable_to_non_nullable
                  as String,
        customerLongitude: null == customerLongitude
            ? _value.customerLongitude
            : customerLongitude // ignore: cast_nullable_to_non_nullable
                  as String,
        timeIn: null == timeIn
            ? _value.timeIn
            : timeIn // ignore: cast_nullable_to_non_nullable
                  as String,
        timeOut: freezed == timeOut
            ? _value.timeOut
            : timeOut // ignore: cast_nullable_to_non_nullable
                  as String?,
        durationInOutlet: null == durationInOutlet
            ? _value.durationInOutlet
            : durationInOutlet // ignore: cast_nullable_to_non_nullable
                  as int,
        areaIds: null == areaIds
            ? _value._areaIds
            : areaIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SiteVisitDataImpl implements _SiteVisitData {
  const _$SiteVisitDataImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'userId') required this.userId,
    @JsonKey(name: 'deviceId') required this.deviceId,
    @JsonKey(name: 'salesPersonCode') required this.salesPersonCode,
    @JsonKey(name: 'salesPersonName') required this.salesPersonName,
    @JsonKey(name: 'customerId') required this.customerId,
    @JsonKey(name: 'customerName') required this.customerName,
    @JsonKey(name: 'customerAddress') required this.customerAddress,
    @JsonKey(name: 'customerChain') required this.customerChain,
    @JsonKey(name: 'customerLatitude') required this.customerLatitude,
    @JsonKey(name: 'customerLongitude') required this.customerLongitude,
    @JsonKey(name: 'timeIn') required this.timeIn,
    @JsonKey(name: 'timeOut') this.timeOut,
    @JsonKey(name: 'durationInOutlet') required this.durationInOutlet,
    @JsonKey(name: 'areaIds') final List<int> areaIds = const [],
    @JsonKey(name: 'companyId') required this.companyId,
    @JsonKey(name: 'createdAt') required this.createdAt,
    @JsonKey(name: 'updatedAt') required this.updatedAt,
  }) : _areaIds = areaIds;

  factory _$SiteVisitDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteVisitDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'userId')
  final int userId;
  @override
  @JsonKey(name: 'deviceId')
  final String deviceId;
  @override
  @JsonKey(name: 'salesPersonCode')
  final String salesPersonCode;
  @override
  @JsonKey(name: 'salesPersonName')
  final String salesPersonName;
  @override
  @JsonKey(name: 'customerId')
  final String customerId;
  @override
  @JsonKey(name: 'customerName')
  final String customerName;
  @override
  @JsonKey(name: 'customerAddress')
  final String customerAddress;
  @override
  @JsonKey(name: 'customerChain')
  final String customerChain;
  @override
  @JsonKey(name: 'customerLatitude')
  final String customerLatitude;
  @override
  @JsonKey(name: 'customerLongitude')
  final String customerLongitude;
  @override
  @JsonKey(name: 'timeIn')
  final String timeIn;
  @override
  @JsonKey(name: 'timeOut')
  final String? timeOut;
  @override
  @JsonKey(name: 'durationInOutlet')
  final int durationInOutlet;
  final List<int> _areaIds;
  @override
  @JsonKey(name: 'areaIds')
  List<int> get areaIds {
    if (_areaIds is EqualUnmodifiableListView) return _areaIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_areaIds);
  }

  @override
  @JsonKey(name: 'companyId')
  final int companyId;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'SiteVisitData(id: $id, userId: $userId, deviceId: $deviceId, salesPersonCode: $salesPersonCode, salesPersonName: $salesPersonName, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, customerChain: $customerChain, customerLatitude: $customerLatitude, customerLongitude: $customerLongitude, timeIn: $timeIn, timeOut: $timeOut, durationInOutlet: $durationInOutlet, areaIds: $areaIds, companyId: $companyId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteVisitDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.salesPersonCode, salesPersonCode) ||
                other.salesPersonCode == salesPersonCode) &&
            (identical(other.salesPersonName, salesPersonName) ||
                other.salesPersonName == salesPersonName) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            (identical(other.customerChain, customerChain) ||
                other.customerChain == customerChain) &&
            (identical(other.customerLatitude, customerLatitude) ||
                other.customerLatitude == customerLatitude) &&
            (identical(other.customerLongitude, customerLongitude) ||
                other.customerLongitude == customerLongitude) &&
            (identical(other.timeIn, timeIn) || other.timeIn == timeIn) &&
            (identical(other.timeOut, timeOut) || other.timeOut == timeOut) &&
            (identical(other.durationInOutlet, durationInOutlet) ||
                other.durationInOutlet == durationInOutlet) &&
            const DeepCollectionEquality().equals(other._areaIds, _areaIds) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    deviceId,
    salesPersonCode,
    salesPersonName,
    customerId,
    customerName,
    customerAddress,
    customerChain,
    customerLatitude,
    customerLongitude,
    timeIn,
    timeOut,
    durationInOutlet,
    const DeepCollectionEquality().hash(_areaIds),
    companyId,
    createdAt,
    updatedAt,
  );

  /// Create a copy of SiteVisitData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteVisitDataImplCopyWith<_$SiteVisitDataImpl> get copyWith =>
      __$$SiteVisitDataImplCopyWithImpl<_$SiteVisitDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteVisitDataImplToJson(this);
  }
}

abstract class _SiteVisitData implements SiteVisitData {
  const factory _SiteVisitData({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'userId') required final int userId,
    @JsonKey(name: 'deviceId') required final String deviceId,
    @JsonKey(name: 'salesPersonCode') required final String salesPersonCode,
    @JsonKey(name: 'salesPersonName') required final String salesPersonName,
    @JsonKey(name: 'customerId') required final String customerId,
    @JsonKey(name: 'customerName') required final String customerName,
    @JsonKey(name: 'customerAddress') required final String customerAddress,
    @JsonKey(name: 'customerChain') required final String customerChain,
    @JsonKey(name: 'customerLatitude') required final String customerLatitude,
    @JsonKey(name: 'customerLongitude') required final String customerLongitude,
    @JsonKey(name: 'timeIn') required final String timeIn,
    @JsonKey(name: 'timeOut') final String? timeOut,
    @JsonKey(name: 'durationInOutlet') required final int durationInOutlet,
    @JsonKey(name: 'areaIds') final List<int> areaIds,
    @JsonKey(name: 'companyId') required final int companyId,
    @JsonKey(name: 'createdAt') required final String createdAt,
    @JsonKey(name: 'updatedAt') required final String updatedAt,
  }) = _$SiteVisitDataImpl;

  factory _SiteVisitData.fromJson(Map<String, dynamic> json) =
      _$SiteVisitDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'userId')
  int get userId;
  @override
  @JsonKey(name: 'deviceId')
  String get deviceId;
  @override
  @JsonKey(name: 'salesPersonCode')
  String get salesPersonCode;
  @override
  @JsonKey(name: 'salesPersonName')
  String get salesPersonName;
  @override
  @JsonKey(name: 'customerId')
  String get customerId;
  @override
  @JsonKey(name: 'customerName')
  String get customerName;
  @override
  @JsonKey(name: 'customerAddress')
  String get customerAddress;
  @override
  @JsonKey(name: 'customerChain')
  String get customerChain;
  @override
  @JsonKey(name: 'customerLatitude')
  String get customerLatitude;
  @override
  @JsonKey(name: 'customerLongitude')
  String get customerLongitude;
  @override
  @JsonKey(name: 'timeIn')
  String get timeIn;
  @override
  @JsonKey(name: 'timeOut')
  String? get timeOut;
  @override
  @JsonKey(name: 'durationInOutlet')
  int get durationInOutlet;
  @override
  @JsonKey(name: 'areaIds')
  List<int> get areaIds;
  @override
  @JsonKey(name: 'companyId')
  int get companyId;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;

  /// Create a copy of SiteVisitData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteVisitDataImplCopyWith<_$SiteVisitDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
