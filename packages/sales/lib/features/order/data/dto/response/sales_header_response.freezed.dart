// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_header_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SalesHeaderResponse _$SalesHeaderResponseFromJson(Map<String, dynamic> json) {
  return _SalesHeaderResponse.fromJson(json);
}

/// @nodoc
mixin _$SalesHeaderResponse {
  String get status => throw _privateConstructorUsedError;
  SalesHeaderData get data => throw _privateConstructorUsedError;

  /// Serializes this SalesHeaderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesHeaderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesHeaderResponseCopyWith<SalesHeaderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesHeaderResponseCopyWith<$Res> {
  factory $SalesHeaderResponseCopyWith(
    SalesHeaderResponse value,
    $Res Function(SalesHeaderResponse) then,
  ) = _$SalesHeaderResponseCopyWithImpl<$Res, SalesHeaderResponse>;
  @useResult
  $Res call({String status, SalesHeaderData data});

  $SalesHeaderDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SalesHeaderResponseCopyWithImpl<$Res, $Val extends SalesHeaderResponse>
    implements $SalesHeaderResponseCopyWith<$Res> {
  _$SalesHeaderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesHeaderResponse
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
                      as SalesHeaderData,
          )
          as $Val,
    );
  }

  /// Create a copy of SalesHeaderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SalesHeaderDataCopyWith<$Res> get data {
    return $SalesHeaderDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalesHeaderResponseImplCopyWith<$Res>
    implements $SalesHeaderResponseCopyWith<$Res> {
  factory _$$SalesHeaderResponseImplCopyWith(
    _$SalesHeaderResponseImpl value,
    $Res Function(_$SalesHeaderResponseImpl) then,
  ) = __$$SalesHeaderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, SalesHeaderData data});

  @override
  $SalesHeaderDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SalesHeaderResponseImplCopyWithImpl<$Res>
    extends _$SalesHeaderResponseCopyWithImpl<$Res, _$SalesHeaderResponseImpl>
    implements _$$SalesHeaderResponseImplCopyWith<$Res> {
  __$$SalesHeaderResponseImplCopyWithImpl(
    _$SalesHeaderResponseImpl _value,
    $Res Function(_$SalesHeaderResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalesHeaderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$SalesHeaderResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as SalesHeaderData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesHeaderResponseImpl implements _SalesHeaderResponse {
  const _$SalesHeaderResponseImpl({required this.status, required this.data});

  factory _$SalesHeaderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesHeaderResponseImplFromJson(json);

  @override
  final String status;
  @override
  final SalesHeaderData data;

  @override
  String toString() {
    return 'SalesHeaderResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesHeaderResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of SalesHeaderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesHeaderResponseImplCopyWith<_$SalesHeaderResponseImpl> get copyWith =>
      __$$SalesHeaderResponseImplCopyWithImpl<_$SalesHeaderResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesHeaderResponseImplToJson(this);
  }
}

abstract class _SalesHeaderResponse implements SalesHeaderResponse {
  const factory _SalesHeaderResponse({
    required final String status,
    required final SalesHeaderData data,
  }) = _$SalesHeaderResponseImpl;

  factory _SalesHeaderResponse.fromJson(Map<String, dynamic> json) =
      _$SalesHeaderResponseImpl.fromJson;

  @override
  String get status;
  @override
  SalesHeaderData get data;

  /// Create a copy of SalesHeaderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesHeaderResponseImplCopyWith<_$SalesHeaderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesHeaderData _$SalesHeaderDataFromJson(Map<String, dynamic> json) {
  return _SalesHeaderData.fromJson(json);
}

/// @nodoc
mixin _$SalesHeaderData {
  int get id => throw _privateConstructorUsedError;
  String get salesId => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get customerAddress => throw _privateConstructorUsedError;
  String get salesPersonId => throw _privateConstructorUsedError;
  String get customerPriceGroup => throw _privateConstructorUsedError;
  String get deliveryAddressLocation => throw _privateConstructorUsedError;
  String get deliveryDate => throw _privateConstructorUsedError;
  String get transactionDate => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  int get syncStatus => throw _privateConstructorUsedError;
  int get companyId => throw _privateConstructorUsedError;

  /// Serializes this SalesHeaderData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesHeaderDataCopyWith<SalesHeaderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesHeaderDataCopyWith<$Res> {
  factory $SalesHeaderDataCopyWith(
    SalesHeaderData value,
    $Res Function(SalesHeaderData) then,
  ) = _$SalesHeaderDataCopyWithImpl<$Res, SalesHeaderData>;
  @useResult
  $Res call({
    int id,
    String salesId,
    String customerId,
    String customerName,
    String customerAddress,
    String salesPersonId,
    String customerPriceGroup,
    String deliveryAddressLocation,
    String deliveryDate,
    String transactionDate,
    String deviceId,
    int syncStatus,
    int companyId,
  });
}

/// @nodoc
class _$SalesHeaderDataCopyWithImpl<$Res, $Val extends SalesHeaderData>
    implements $SalesHeaderDataCopyWith<$Res> {
  _$SalesHeaderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? salesId = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAddress = null,
    Object? salesPersonId = null,
    Object? customerPriceGroup = null,
    Object? deliveryAddressLocation = null,
    Object? deliveryDate = null,
    Object? transactionDate = null,
    Object? deviceId = null,
    Object? syncStatus = null,
    Object? companyId = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            salesId: null == salesId
                ? _value.salesId
                : salesId // ignore: cast_nullable_to_non_nullable
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
            salesPersonId: null == salesPersonId
                ? _value.salesPersonId
                : salesPersonId // ignore: cast_nullable_to_non_nullable
                      as String,
            customerPriceGroup: null == customerPriceGroup
                ? _value.customerPriceGroup
                : customerPriceGroup // ignore: cast_nullable_to_non_nullable
                      as String,
            deliveryAddressLocation: null == deliveryAddressLocation
                ? _value.deliveryAddressLocation
                : deliveryAddressLocation // ignore: cast_nullable_to_non_nullable
                      as String,
            deliveryDate: null == deliveryDate
                ? _value.deliveryDate
                : deliveryDate // ignore: cast_nullable_to_non_nullable
                      as String,
            transactionDate: null == transactionDate
                ? _value.transactionDate
                : transactionDate // ignore: cast_nullable_to_non_nullable
                      as String,
            deviceId: null == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            syncStatus: null == syncStatus
                ? _value.syncStatus
                : syncStatus // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$SalesHeaderDataImplCopyWith<$Res>
    implements $SalesHeaderDataCopyWith<$Res> {
  factory _$$SalesHeaderDataImplCopyWith(
    _$SalesHeaderDataImpl value,
    $Res Function(_$SalesHeaderDataImpl) then,
  ) = __$$SalesHeaderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String salesId,
    String customerId,
    String customerName,
    String customerAddress,
    String salesPersonId,
    String customerPriceGroup,
    String deliveryAddressLocation,
    String deliveryDate,
    String transactionDate,
    String deviceId,
    int syncStatus,
    int companyId,
  });
}

/// @nodoc
class __$$SalesHeaderDataImplCopyWithImpl<$Res>
    extends _$SalesHeaderDataCopyWithImpl<$Res, _$SalesHeaderDataImpl>
    implements _$$SalesHeaderDataImplCopyWith<$Res> {
  __$$SalesHeaderDataImplCopyWithImpl(
    _$SalesHeaderDataImpl _value,
    $Res Function(_$SalesHeaderDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalesHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? salesId = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAddress = null,
    Object? salesPersonId = null,
    Object? customerPriceGroup = null,
    Object? deliveryAddressLocation = null,
    Object? deliveryDate = null,
    Object? transactionDate = null,
    Object? deviceId = null,
    Object? syncStatus = null,
    Object? companyId = null,
  }) {
    return _then(
      _$SalesHeaderDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        salesId: null == salesId
            ? _value.salesId
            : salesId // ignore: cast_nullable_to_non_nullable
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
        salesPersonId: null == salesPersonId
            ? _value.salesPersonId
            : salesPersonId // ignore: cast_nullable_to_non_nullable
                  as String,
        customerPriceGroup: null == customerPriceGroup
            ? _value.customerPriceGroup
            : customerPriceGroup // ignore: cast_nullable_to_non_nullable
                  as String,
        deliveryAddressLocation: null == deliveryAddressLocation
            ? _value.deliveryAddressLocation
            : deliveryAddressLocation // ignore: cast_nullable_to_non_nullable
                  as String,
        deliveryDate: null == deliveryDate
            ? _value.deliveryDate
            : deliveryDate // ignore: cast_nullable_to_non_nullable
                  as String,
        transactionDate: null == transactionDate
            ? _value.transactionDate
            : transactionDate // ignore: cast_nullable_to_non_nullable
                  as String,
        deviceId: null == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        syncStatus: null == syncStatus
            ? _value.syncStatus
            : syncStatus // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$SalesHeaderDataImpl implements _SalesHeaderData {
  const _$SalesHeaderDataImpl({
    required this.id,
    required this.salesId,
    required this.customerId,
    required this.customerName,
    required this.customerAddress,
    required this.salesPersonId,
    required this.customerPriceGroup,
    required this.deliveryAddressLocation,
    required this.deliveryDate,
    required this.transactionDate,
    required this.deviceId,
    required this.syncStatus,
    required this.companyId,
  });

  factory _$SalesHeaderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesHeaderDataImplFromJson(json);

  @override
  final int id;
  @override
  final String salesId;
  @override
  final String customerId;
  @override
  final String customerName;
  @override
  final String customerAddress;
  @override
  final String salesPersonId;
  @override
  final String customerPriceGroup;
  @override
  final String deliveryAddressLocation;
  @override
  final String deliveryDate;
  @override
  final String transactionDate;
  @override
  final String deviceId;
  @override
  final int syncStatus;
  @override
  final int companyId;

  @override
  String toString() {
    return 'SalesHeaderData(id: $id, salesId: $salesId, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, salesPersonId: $salesPersonId, customerPriceGroup: $customerPriceGroup, deliveryAddressLocation: $deliveryAddressLocation, deliveryDate: $deliveryDate, transactionDate: $transactionDate, deviceId: $deviceId, syncStatus: $syncStatus, companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesHeaderDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salesId, salesId) || other.salesId == salesId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            (identical(other.salesPersonId, salesPersonId) ||
                other.salesPersonId == salesPersonId) &&
            (identical(other.customerPriceGroup, customerPriceGroup) ||
                other.customerPriceGroup == customerPriceGroup) &&
            (identical(
                  other.deliveryAddressLocation,
                  deliveryAddressLocation,
                ) ||
                other.deliveryAddressLocation == deliveryAddressLocation) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.syncStatus, syncStatus) ||
                other.syncStatus == syncStatus) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    salesId,
    customerId,
    customerName,
    customerAddress,
    salesPersonId,
    customerPriceGroup,
    deliveryAddressLocation,
    deliveryDate,
    transactionDate,
    deviceId,
    syncStatus,
    companyId,
  );

  /// Create a copy of SalesHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesHeaderDataImplCopyWith<_$SalesHeaderDataImpl> get copyWith =>
      __$$SalesHeaderDataImplCopyWithImpl<_$SalesHeaderDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesHeaderDataImplToJson(this);
  }
}

abstract class _SalesHeaderData implements SalesHeaderData {
  const factory _SalesHeaderData({
    required final int id,
    required final String salesId,
    required final String customerId,
    required final String customerName,
    required final String customerAddress,
    required final String salesPersonId,
    required final String customerPriceGroup,
    required final String deliveryAddressLocation,
    required final String deliveryDate,
    required final String transactionDate,
    required final String deviceId,
    required final int syncStatus,
    required final int companyId,
  }) = _$SalesHeaderDataImpl;

  factory _SalesHeaderData.fromJson(Map<String, dynamic> json) =
      _$SalesHeaderDataImpl.fromJson;

  @override
  int get id;
  @override
  String get salesId;
  @override
  String get customerId;
  @override
  String get customerName;
  @override
  String get customerAddress;
  @override
  String get salesPersonId;
  @override
  String get customerPriceGroup;
  @override
  String get deliveryAddressLocation;
  @override
  String get deliveryDate;
  @override
  String get transactionDate;
  @override
  String get deviceId;
  @override
  int get syncStatus;
  @override
  int get companyId;

  /// Create a copy of SalesHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesHeaderDataImplCopyWith<_$SalesHeaderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
