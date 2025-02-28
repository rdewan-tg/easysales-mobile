// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_header_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SalesHeaderRequest _$SalesHeaderRequestFromJson(Map<String, dynamic> json) {
  return _SalesHeaderRequest.fromJson(json);
}

/// @nodoc
mixin _$SalesHeaderRequest {
  int? get id => throw _privateConstructorUsedError;
  String get salesId => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get customerAddress => throw _privateConstructorUsedError;
  String get salesPersonId => throw _privateConstructorUsedError;
  String get customerRequisition => throw _privateConstructorUsedError;
  String get customerPriceGroup => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get deliveryAddressLocation => throw _privateConstructorUsedError;
  String get deliveryDate => throw _privateConstructorUsedError;
  String get transactionDate => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  int get syncStatus => throw _privateConstructorUsedError;
  int get companyId => throw _privateConstructorUsedError;

  /// Serializes this SalesHeaderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesHeaderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesHeaderRequestCopyWith<SalesHeaderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesHeaderRequestCopyWith<$Res> {
  factory $SalesHeaderRequestCopyWith(
          SalesHeaderRequest value, $Res Function(SalesHeaderRequest) then) =
      _$SalesHeaderRequestCopyWithImpl<$Res, SalesHeaderRequest>;
  @useResult
  $Res call(
      {int? id,
      String salesId,
      String customerId,
      String customerName,
      String customerAddress,
      String salesPersonId,
      String customerRequisition,
      String customerPriceGroup,
      String note,
      String deliveryAddressLocation,
      String deliveryDate,
      String transactionDate,
      String deviceId,
      int syncStatus,
      int companyId});
}

/// @nodoc
class _$SalesHeaderRequestCopyWithImpl<$Res, $Val extends SalesHeaderRequest>
    implements $SalesHeaderRequestCopyWith<$Res> {
  _$SalesHeaderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesHeaderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesId = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAddress = null,
    Object? salesPersonId = null,
    Object? customerRequisition = null,
    Object? customerPriceGroup = null,
    Object? note = null,
    Object? deliveryAddressLocation = null,
    Object? deliveryDate = null,
    Object? transactionDate = null,
    Object? deviceId = null,
    Object? syncStatus = null,
    Object? companyId = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      customerRequisition: null == customerRequisition
          ? _value.customerRequisition
          : customerRequisition // ignore: cast_nullable_to_non_nullable
              as String,
      customerPriceGroup: null == customerPriceGroup
          ? _value.customerPriceGroup
          : customerPriceGroup // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesHeaderRequestImplCopyWith<$Res>
    implements $SalesHeaderRequestCopyWith<$Res> {
  factory _$$SalesHeaderRequestImplCopyWith(_$SalesHeaderRequestImpl value,
          $Res Function(_$SalesHeaderRequestImpl) then) =
      __$$SalesHeaderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String salesId,
      String customerId,
      String customerName,
      String customerAddress,
      String salesPersonId,
      String customerRequisition,
      String customerPriceGroup,
      String note,
      String deliveryAddressLocation,
      String deliveryDate,
      String transactionDate,
      String deviceId,
      int syncStatus,
      int companyId});
}

/// @nodoc
class __$$SalesHeaderRequestImplCopyWithImpl<$Res>
    extends _$SalesHeaderRequestCopyWithImpl<$Res, _$SalesHeaderRequestImpl>
    implements _$$SalesHeaderRequestImplCopyWith<$Res> {
  __$$SalesHeaderRequestImplCopyWithImpl(_$SalesHeaderRequestImpl _value,
      $Res Function(_$SalesHeaderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesHeaderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesId = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAddress = null,
    Object? salesPersonId = null,
    Object? customerRequisition = null,
    Object? customerPriceGroup = null,
    Object? note = null,
    Object? deliveryAddressLocation = null,
    Object? deliveryDate = null,
    Object? transactionDate = null,
    Object? deviceId = null,
    Object? syncStatus = null,
    Object? companyId = null,
  }) {
    return _then(_$SalesHeaderRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      customerRequisition: null == customerRequisition
          ? _value.customerRequisition
          : customerRequisition // ignore: cast_nullable_to_non_nullable
              as String,
      customerPriceGroup: null == customerPriceGroup
          ? _value.customerPriceGroup
          : customerPriceGroup // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesHeaderRequestImpl implements _SalesHeaderRequest {
  _$SalesHeaderRequestImpl(
      {this.id,
      required this.salesId,
      required this.customerId,
      required this.customerName,
      required this.customerAddress,
      required this.salesPersonId,
      required this.customerRequisition,
      required this.customerPriceGroup,
      required this.note,
      required this.deliveryAddressLocation,
      required this.deliveryDate,
      required this.transactionDate,
      required this.deviceId,
      required this.syncStatus,
      required this.companyId});

  factory _$SalesHeaderRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesHeaderRequestImplFromJson(json);

  @override
  final int? id;
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
  final String customerRequisition;
  @override
  final String customerPriceGroup;
  @override
  final String note;
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
    return 'SalesHeaderRequest(id: $id, salesId: $salesId, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, salesPersonId: $salesPersonId, customerRequisition: $customerRequisition, customerPriceGroup: $customerPriceGroup, note: $note, deliveryAddressLocation: $deliveryAddressLocation, deliveryDate: $deliveryDate, transactionDate: $transactionDate, deviceId: $deviceId, syncStatus: $syncStatus, companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesHeaderRequestImpl &&
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
            (identical(other.customerRequisition, customerRequisition) ||
                other.customerRequisition == customerRequisition) &&
            (identical(other.customerPriceGroup, customerPriceGroup) ||
                other.customerPriceGroup == customerPriceGroup) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(
                    other.deliveryAddressLocation, deliveryAddressLocation) ||
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
      customerRequisition,
      customerPriceGroup,
      note,
      deliveryAddressLocation,
      deliveryDate,
      transactionDate,
      deviceId,
      syncStatus,
      companyId);

  /// Create a copy of SalesHeaderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesHeaderRequestImplCopyWith<_$SalesHeaderRequestImpl> get copyWith =>
      __$$SalesHeaderRequestImplCopyWithImpl<_$SalesHeaderRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesHeaderRequestImplToJson(
      this,
    );
  }
}

abstract class _SalesHeaderRequest implements SalesHeaderRequest {
  factory _SalesHeaderRequest(
      {final int? id,
      required final String salesId,
      required final String customerId,
      required final String customerName,
      required final String customerAddress,
      required final String salesPersonId,
      required final String customerRequisition,
      required final String customerPriceGroup,
      required final String note,
      required final String deliveryAddressLocation,
      required final String deliveryDate,
      required final String transactionDate,
      required final String deviceId,
      required final int syncStatus,
      required final int companyId}) = _$SalesHeaderRequestImpl;

  factory _SalesHeaderRequest.fromJson(Map<String, dynamic> json) =
      _$SalesHeaderRequestImpl.fromJson;

  @override
  int? get id;
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
  String get customerRequisition;
  @override
  String get customerPriceGroup;
  @override
  String get note;
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

  /// Create a copy of SalesHeaderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesHeaderRequestImplCopyWith<_$SalesHeaderRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
