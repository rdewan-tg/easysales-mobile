// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_customer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SalesCustomerResponse _$SalesCustomerResponseFromJson(
    Map<String, dynamic> json) {
  return _SalesCustomerResponse.fromJson(json);
}

/// @nodoc
mixin _$SalesCustomerResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<SalesCustomerDto> get data => throw _privateConstructorUsedError;

  /// Serializes this SalesCustomerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesCustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesCustomerResponseCopyWith<SalesCustomerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesCustomerResponseCopyWith<$Res> {
  factory $SalesCustomerResponseCopyWith(SalesCustomerResponse value,
          $Res Function(SalesCustomerResponse) then) =
      _$SalesCustomerResponseCopyWithImpl<$Res, SalesCustomerResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "data") List<SalesCustomerDto> data});
}

/// @nodoc
class _$SalesCustomerResponseCopyWithImpl<$Res,
        $Val extends SalesCustomerResponse>
    implements $SalesCustomerResponseCopyWith<$Res> {
  _$SalesCustomerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesCustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SalesCustomerDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesCustomerResponseImplCopyWith<$Res>
    implements $SalesCustomerResponseCopyWith<$Res> {
  factory _$$SalesCustomerResponseImplCopyWith(
          _$SalesCustomerResponseImpl value,
          $Res Function(_$SalesCustomerResponseImpl) then) =
      __$$SalesCustomerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "data") List<SalesCustomerDto> data});
}

/// @nodoc
class __$$SalesCustomerResponseImplCopyWithImpl<$Res>
    extends _$SalesCustomerResponseCopyWithImpl<$Res,
        _$SalesCustomerResponseImpl>
    implements _$$SalesCustomerResponseImplCopyWith<$Res> {
  __$$SalesCustomerResponseImplCopyWithImpl(_$SalesCustomerResponseImpl _value,
      $Res Function(_$SalesCustomerResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesCustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_$SalesCustomerResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SalesCustomerDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesCustomerResponseImpl implements _SalesCustomerResponse {
  const _$SalesCustomerResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "data") required final List<SalesCustomerDto> data})
      : _data = data;

  factory _$SalesCustomerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesCustomerResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "total")
  final int total;
  final List<SalesCustomerDto> _data;
  @override
  @JsonKey(name: "data")
  List<SalesCustomerDto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SalesCustomerResponse(status: $status, total: $total, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesCustomerResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, total, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SalesCustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesCustomerResponseImplCopyWith<_$SalesCustomerResponseImpl>
      get copyWith => __$$SalesCustomerResponseImplCopyWithImpl<
          _$SalesCustomerResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesCustomerResponseImplToJson(
      this,
    );
  }
}

abstract class _SalesCustomerResponse implements SalesCustomerResponse {
  const factory _SalesCustomerResponse(
          {@JsonKey(name: "status") required final String status,
          @JsonKey(name: "total") required final int total,
          @JsonKey(name: "data") required final List<SalesCustomerDto> data}) =
      _$SalesCustomerResponseImpl;

  factory _SalesCustomerResponse.fromJson(Map<String, dynamic> json) =
      _$SalesCustomerResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "data")
  List<SalesCustomerDto> get data;

  /// Create a copy of SalesCustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesCustomerResponseImplCopyWith<_$SalesCustomerResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SalesCustomerDto _$SalesCustomerDtoFromJson(Map<String, dynamic> json) {
  return _SalesCustomerDto.fromJson(json);
}

/// @nodoc
mixin _$SalesCustomerDto {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "customerName")
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "salesPersonId")
  String get salesPersonId => throw _privateConstructorUsedError;
  @JsonKey(name: "salesPerson")
  String? get salesPerson => throw _privateConstructorUsedError;
  @JsonKey(name: "merchandiser")
  String? get merchandiser => throw _privateConstructorUsedError;
  @JsonKey(name: "countryId")
  String get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: "phoneNumber")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  String get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  String get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "creditLimit")
  double? get creditLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "currencyCode")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "paymentTerm")
  String? get paymentTerm => throw _privateConstructorUsedError;
  @JsonKey(name: "priceGroup")
  String? get priceGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "customreDimension")
  String? get customreDimension => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "companyId")
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "companyCode")
  String get companyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "createAt")
  DateTime get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SalesCustomerDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesCustomerDtoCopyWith<SalesCustomerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesCustomerDtoCopyWith<$Res> {
  factory $SalesCustomerDtoCopyWith(
          SalesCustomerDto value, $Res Function(SalesCustomerDto) then) =
      _$SalesCustomerDtoCopyWithImpl<$Res, SalesCustomerDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "customerId") String customerId,
      @JsonKey(name: "customerName") String customerName,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "salesPersonId") String salesPersonId,
      @JsonKey(name: "salesPerson") String? salesPerson,
      @JsonKey(name: "merchandiser") String? merchandiser,
      @JsonKey(name: "countryId") String countryId,
      @JsonKey(name: "phoneNumber") String? phoneNumber,
      @JsonKey(name: "latitude") String latitude,
      @JsonKey(name: "longitude") String longitude,
      @JsonKey(name: "creditLimit") double? creditLimit,
      @JsonKey(name: "currencyCode") String? currencyCode,
      @JsonKey(name: "paymentTerm") String? paymentTerm,
      @JsonKey(name: "priceGroup") String? priceGroup,
      @JsonKey(name: "customreDimension") String? customreDimension,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "companyId") int companyId,
      @JsonKey(name: "companyCode") String companyCode,
      @JsonKey(name: "createAt") DateTime createAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt});
}

/// @nodoc
class _$SalesCustomerDtoCopyWithImpl<$Res, $Val extends SalesCustomerDto>
    implements $SalesCustomerDtoCopyWith<$Res> {
  _$SalesCustomerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? address = null,
    Object? salesPersonId = null,
    Object? salesPerson = freezed,
    Object? merchandiser = freezed,
    Object? countryId = null,
    Object? phoneNumber = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? creditLimit = freezed,
    Object? currencyCode = freezed,
    Object? paymentTerm = freezed,
    Object? priceGroup = freezed,
    Object? customreDimension = freezed,
    Object? status = null,
    Object? companyId = null,
    Object? companyCode = null,
    Object? createAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      salesPersonId: null == salesPersonId
          ? _value.salesPersonId
          : salesPersonId // ignore: cast_nullable_to_non_nullable
              as String,
      salesPerson: freezed == salesPerson
          ? _value.salesPerson
          : salesPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      merchandiser: freezed == merchandiser
          ? _value.merchandiser
          : merchandiser // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: freezed == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerm: freezed == paymentTerm
          ? _value.paymentTerm
          : paymentTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      priceGroup: freezed == priceGroup
          ? _value.priceGroup
          : priceGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      customreDimension: freezed == customreDimension
          ? _value.customreDimension
          : customreDimension // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      companyCode: null == companyCode
          ? _value.companyCode
          : companyCode // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesCustomerDtoImplCopyWith<$Res>
    implements $SalesCustomerDtoCopyWith<$Res> {
  factory _$$SalesCustomerDtoImplCopyWith(_$SalesCustomerDtoImpl value,
          $Res Function(_$SalesCustomerDtoImpl) then) =
      __$$SalesCustomerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "customerId") String customerId,
      @JsonKey(name: "customerName") String customerName,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "salesPersonId") String salesPersonId,
      @JsonKey(name: "salesPerson") String? salesPerson,
      @JsonKey(name: "merchandiser") String? merchandiser,
      @JsonKey(name: "countryId") String countryId,
      @JsonKey(name: "phoneNumber") String? phoneNumber,
      @JsonKey(name: "latitude") String latitude,
      @JsonKey(name: "longitude") String longitude,
      @JsonKey(name: "creditLimit") double? creditLimit,
      @JsonKey(name: "currencyCode") String? currencyCode,
      @JsonKey(name: "paymentTerm") String? paymentTerm,
      @JsonKey(name: "priceGroup") String? priceGroup,
      @JsonKey(name: "customreDimension") String? customreDimension,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "companyId") int companyId,
      @JsonKey(name: "companyCode") String companyCode,
      @JsonKey(name: "createAt") DateTime createAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt});
}

/// @nodoc
class __$$SalesCustomerDtoImplCopyWithImpl<$Res>
    extends _$SalesCustomerDtoCopyWithImpl<$Res, _$SalesCustomerDtoImpl>
    implements _$$SalesCustomerDtoImplCopyWith<$Res> {
  __$$SalesCustomerDtoImplCopyWithImpl(_$SalesCustomerDtoImpl _value,
      $Res Function(_$SalesCustomerDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? address = null,
    Object? salesPersonId = null,
    Object? salesPerson = freezed,
    Object? merchandiser = freezed,
    Object? countryId = null,
    Object? phoneNumber = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? creditLimit = freezed,
    Object? currencyCode = freezed,
    Object? paymentTerm = freezed,
    Object? priceGroup = freezed,
    Object? customreDimension = freezed,
    Object? status = null,
    Object? companyId = null,
    Object? companyCode = null,
    Object? createAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SalesCustomerDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      salesPersonId: null == salesPersonId
          ? _value.salesPersonId
          : salesPersonId // ignore: cast_nullable_to_non_nullable
              as String,
      salesPerson: freezed == salesPerson
          ? _value.salesPerson
          : salesPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      merchandiser: freezed == merchandiser
          ? _value.merchandiser
          : merchandiser // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: freezed == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerm: freezed == paymentTerm
          ? _value.paymentTerm
          : paymentTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      priceGroup: freezed == priceGroup
          ? _value.priceGroup
          : priceGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      customreDimension: freezed == customreDimension
          ? _value.customreDimension
          : customreDimension // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      companyCode: null == companyCode
          ? _value.companyCode
          : companyCode // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesCustomerDtoImpl implements _SalesCustomerDto {
  const _$SalesCustomerDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "customerId") required this.customerId,
      @JsonKey(name: "customerName") required this.customerName,
      @JsonKey(name: "address") required this.address,
      @JsonKey(name: "salesPersonId") required this.salesPersonId,
      @JsonKey(name: "salesPerson") this.salesPerson,
      @JsonKey(name: "merchandiser") this.merchandiser,
      @JsonKey(name: "countryId") required this.countryId,
      @JsonKey(name: "phoneNumber") this.phoneNumber,
      @JsonKey(name: "latitude") required this.latitude,
      @JsonKey(name: "longitude") required this.longitude,
      @JsonKey(name: "creditLimit") this.creditLimit,
      @JsonKey(name: "currencyCode") this.currencyCode,
      @JsonKey(name: "paymentTerm") this.paymentTerm,
      @JsonKey(name: "priceGroup") this.priceGroup,
      @JsonKey(name: "customreDimension") this.customreDimension,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "companyId") required this.companyId,
      @JsonKey(name: "companyCode") required this.companyCode,
      @JsonKey(name: "createAt") required this.createAt,
      @JsonKey(name: "updatedAt") required this.updatedAt});

  factory _$SalesCustomerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesCustomerDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "customerId")
  final String customerId;
  @override
  @JsonKey(name: "customerName")
  final String customerName;
  @override
  @JsonKey(name: "address")
  final String address;
  @override
  @JsonKey(name: "salesPersonId")
  final String salesPersonId;
  @override
  @JsonKey(name: "salesPerson")
  final String? salesPerson;
  @override
  @JsonKey(name: "merchandiser")
  final String? merchandiser;
  @override
  @JsonKey(name: "countryId")
  final String countryId;
  @override
  @JsonKey(name: "phoneNumber")
  final String? phoneNumber;
  @override
  @JsonKey(name: "latitude")
  final String latitude;
  @override
  @JsonKey(name: "longitude")
  final String longitude;
  @override
  @JsonKey(name: "creditLimit")
  final double? creditLimit;
  @override
  @JsonKey(name: "currencyCode")
  final String? currencyCode;
  @override
  @JsonKey(name: "paymentTerm")
  final String? paymentTerm;
  @override
  @JsonKey(name: "priceGroup")
  final String? priceGroup;
  @override
  @JsonKey(name: "customreDimension")
  final String? customreDimension;
  @override
  @JsonKey(name: "status")
  final int status;
  @override
  @JsonKey(name: "companyId")
  final int companyId;
  @override
  @JsonKey(name: "companyCode")
  final String companyCode;
  @override
  @JsonKey(name: "createAt")
  final DateTime createAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SalesCustomerDto(id: $id, customerId: $customerId, customerName: $customerName, address: $address, salesPersonId: $salesPersonId, salesPerson: $salesPerson, merchandiser: $merchandiser, countryId: $countryId, phoneNumber: $phoneNumber, latitude: $latitude, longitude: $longitude, creditLimit: $creditLimit, currencyCode: $currencyCode, paymentTerm: $paymentTerm, priceGroup: $priceGroup, customreDimension: $customreDimension, status: $status, companyId: $companyId, companyCode: $companyCode, createAt: $createAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesCustomerDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.salesPersonId, salesPersonId) ||
                other.salesPersonId == salesPersonId) &&
            (identical(other.salesPerson, salesPerson) ||
                other.salesPerson == salesPerson) &&
            (identical(other.merchandiser, merchandiser) ||
                other.merchandiser == merchandiser) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.creditLimit, creditLimit) ||
                other.creditLimit == creditLimit) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.paymentTerm, paymentTerm) ||
                other.paymentTerm == paymentTerm) &&
            (identical(other.priceGroup, priceGroup) ||
                other.priceGroup == priceGroup) &&
            (identical(other.customreDimension, customreDimension) ||
                other.customreDimension == customreDimension) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyCode, companyCode) ||
                other.companyCode == companyCode) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        customerId,
        customerName,
        address,
        salesPersonId,
        salesPerson,
        merchandiser,
        countryId,
        phoneNumber,
        latitude,
        longitude,
        creditLimit,
        currencyCode,
        paymentTerm,
        priceGroup,
        customreDimension,
        status,
        companyId,
        companyCode,
        createAt,
        updatedAt
      ]);

  /// Create a copy of SalesCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesCustomerDtoImplCopyWith<_$SalesCustomerDtoImpl> get copyWith =>
      __$$SalesCustomerDtoImplCopyWithImpl<_$SalesCustomerDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesCustomerDtoImplToJson(
      this,
    );
  }
}

abstract class _SalesCustomerDto implements SalesCustomerDto {
  const factory _SalesCustomerDto(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "customerId") required final String customerId,
          @JsonKey(name: "customerName") required final String customerName,
          @JsonKey(name: "address") required final String address,
          @JsonKey(name: "salesPersonId") required final String salesPersonId,
          @JsonKey(name: "salesPerson") final String? salesPerson,
          @JsonKey(name: "merchandiser") final String? merchandiser,
          @JsonKey(name: "countryId") required final String countryId,
          @JsonKey(name: "phoneNumber") final String? phoneNumber,
          @JsonKey(name: "latitude") required final String latitude,
          @JsonKey(name: "longitude") required final String longitude,
          @JsonKey(name: "creditLimit") final double? creditLimit,
          @JsonKey(name: "currencyCode") final String? currencyCode,
          @JsonKey(name: "paymentTerm") final String? paymentTerm,
          @JsonKey(name: "priceGroup") final String? priceGroup,
          @JsonKey(name: "customreDimension") final String? customreDimension,
          @JsonKey(name: "status") required final int status,
          @JsonKey(name: "companyId") required final int companyId,
          @JsonKey(name: "companyCode") required final String companyCode,
          @JsonKey(name: "createAt") required final DateTime createAt,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt}) =
      _$SalesCustomerDtoImpl;

  factory _SalesCustomerDto.fromJson(Map<String, dynamic> json) =
      _$SalesCustomerDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "customerId")
  String get customerId;
  @override
  @JsonKey(name: "customerName")
  String get customerName;
  @override
  @JsonKey(name: "address")
  String get address;
  @override
  @JsonKey(name: "salesPersonId")
  String get salesPersonId;
  @override
  @JsonKey(name: "salesPerson")
  String? get salesPerson;
  @override
  @JsonKey(name: "merchandiser")
  String? get merchandiser;
  @override
  @JsonKey(name: "countryId")
  String get countryId;
  @override
  @JsonKey(name: "phoneNumber")
  String? get phoneNumber;
  @override
  @JsonKey(name: "latitude")
  String get latitude;
  @override
  @JsonKey(name: "longitude")
  String get longitude;
  @override
  @JsonKey(name: "creditLimit")
  double? get creditLimit;
  @override
  @JsonKey(name: "currencyCode")
  String? get currencyCode;
  @override
  @JsonKey(name: "paymentTerm")
  String? get paymentTerm;
  @override
  @JsonKey(name: "priceGroup")
  String? get priceGroup;
  @override
  @JsonKey(name: "customreDimension")
  String? get customreDimension;
  @override
  @JsonKey(name: "status")
  int get status;
  @override
  @JsonKey(name: "companyId")
  int get companyId;
  @override
  @JsonKey(name: "companyCode")
  String get companyCode;
  @override
  @JsonKey(name: "createAt")
  DateTime get createAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;

  /// Create a copy of SalesCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesCustomerDtoImplCopyWith<_$SalesCustomerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
