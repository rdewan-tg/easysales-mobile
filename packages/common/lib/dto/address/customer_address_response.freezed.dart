// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_address_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerAddressResponse _$CustomerAddressResponseFromJson(
  Map<String, dynamic> json,
) {
  return _CustomerAddressResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomerAddressResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<CustomerAddressData> get data => throw _privateConstructorUsedError;

  /// Serializes this CustomerAddressResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerAddressResponseCopyWith<CustomerAddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddressResponseCopyWith<$Res> {
  factory $CustomerAddressResponseCopyWith(
    CustomerAddressResponse value,
    $Res Function(CustomerAddressResponse) then,
  ) = _$CustomerAddressResponseCopyWithImpl<$Res, CustomerAddressResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "total") int total,
    @JsonKey(name: "data") List<CustomerAddressData> data,
  });
}

/// @nodoc
class _$CustomerAddressResponseCopyWithImpl<
  $Res,
  $Val extends CustomerAddressResponse
>
    implements $CustomerAddressResponseCopyWith<$Res> {
  _$CustomerAddressResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(
      _value.copyWith(
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
                      as List<CustomerAddressData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerAddressResponseImplCopyWith<$Res>
    implements $CustomerAddressResponseCopyWith<$Res> {
  factory _$$CustomerAddressResponseImplCopyWith(
    _$CustomerAddressResponseImpl value,
    $Res Function(_$CustomerAddressResponseImpl) then,
  ) = __$$CustomerAddressResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "total") int total,
    @JsonKey(name: "data") List<CustomerAddressData> data,
  });
}

/// @nodoc
class __$$CustomerAddressResponseImplCopyWithImpl<$Res>
    extends
        _$CustomerAddressResponseCopyWithImpl<
          $Res,
          _$CustomerAddressResponseImpl
        >
    implements _$$CustomerAddressResponseImplCopyWith<$Res> {
  __$$CustomerAddressResponseImplCopyWithImpl(
    _$CustomerAddressResponseImpl _value,
    $Res Function(_$CustomerAddressResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(
      _$CustomerAddressResponseImpl(
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
                  as List<CustomerAddressData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerAddressResponseImpl implements _CustomerAddressResponse {
  const _$CustomerAddressResponseImpl({
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "total") required this.total,
    @JsonKey(name: "data")
    final List<CustomerAddressData> data = const <CustomerAddressData>[],
  }) : _data = data;

  factory _$CustomerAddressResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerAddressResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "total")
  final int total;
  final List<CustomerAddressData> _data;
  @override
  @JsonKey(name: "data")
  List<CustomerAddressData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CustomerAddressResponse(status: $status, total: $total, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAddressResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    total,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of CustomerAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerAddressResponseImplCopyWith<_$CustomerAddressResponseImpl>
  get copyWith =>
      __$$CustomerAddressResponseImplCopyWithImpl<
        _$CustomerAddressResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerAddressResponseImplToJson(this);
  }
}

abstract class _CustomerAddressResponse implements CustomerAddressResponse {
  const factory _CustomerAddressResponse({
    @JsonKey(name: "status") required final String status,
    @JsonKey(name: "total") required final int total,
    @JsonKey(name: "data") final List<CustomerAddressData> data,
  }) = _$CustomerAddressResponseImpl;

  factory _CustomerAddressResponse.fromJson(Map<String, dynamic> json) =
      _$CustomerAddressResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "data")
  List<CustomerAddressData> get data;

  /// Create a copy of CustomerAddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerAddressResponseImplCopyWith<_$CustomerAddressResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CustomerAddressData _$CustomerAddressDataFromJson(Map<String, dynamic> json) {
  return _CustomerAddressData.fromJson(json);
}

/// @nodoc
mixin _$CustomerAddressData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "salesPersonId")
  String? get salesPersonId => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  String get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  String get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "deliveryName")
  String? get deliveryName => throw _privateConstructorUsedError;
  @JsonKey(name: "postalAddress")
  String get postalAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: "isPrimary")
  bool get isPrimary => throw _privateConstructorUsedError;
  @JsonKey(name: "companyId")
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "companyCode")
  String get companyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "createAt")
  DateTime get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this CustomerAddressData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerAddressData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerAddressDataCopyWith<CustomerAddressData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddressDataCopyWith<$Res> {
  factory $CustomerAddressDataCopyWith(
    CustomerAddressData value,
    $Res Function(CustomerAddressData) then,
  ) = _$CustomerAddressDataCopyWithImpl<$Res, CustomerAddressData>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "customerId") String customerId,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "salesPersonId") String? salesPersonId,
    @JsonKey(name: "latitude") String latitude,
    @JsonKey(name: "longitude") String longitude,
    @JsonKey(name: "deliveryName") String? deliveryName,
    @JsonKey(name: "postalAddress") String postalAddress,
    @JsonKey(name: "location") String location,
    @JsonKey(name: "isPrimary") bool isPrimary,
    @JsonKey(name: "companyId") int companyId,
    @JsonKey(name: "companyCode") String companyCode,
    @JsonKey(name: "createAt") DateTime createAt,
    @JsonKey(name: "updatedAt") DateTime updatedAt,
  });
}

/// @nodoc
class _$CustomerAddressDataCopyWithImpl<$Res, $Val extends CustomerAddressData>
    implements $CustomerAddressDataCopyWith<$Res> {
  _$CustomerAddressDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerAddressData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? address = freezed,
    Object? salesPersonId = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? deliveryName = freezed,
    Object? postalAddress = null,
    Object? location = null,
    Object? isPrimary = null,
    Object? companyId = null,
    Object? companyCode = null,
    Object? createAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            customerId: null == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                      as String,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            salesPersonId: freezed == salesPersonId
                ? _value.salesPersonId
                : salesPersonId // ignore: cast_nullable_to_non_nullable
                      as String?,
            latitude: null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as String,
            longitude: null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as String,
            deliveryName: freezed == deliveryName
                ? _value.deliveryName
                : deliveryName // ignore: cast_nullable_to_non_nullable
                      as String?,
            postalAddress: null == postalAddress
                ? _value.postalAddress
                : postalAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
            isPrimary: null == isPrimary
                ? _value.isPrimary
                : isPrimary // ignore: cast_nullable_to_non_nullable
                      as bool,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerAddressDataImplCopyWith<$Res>
    implements $CustomerAddressDataCopyWith<$Res> {
  factory _$$CustomerAddressDataImplCopyWith(
    _$CustomerAddressDataImpl value,
    $Res Function(_$CustomerAddressDataImpl) then,
  ) = __$$CustomerAddressDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "customerId") String customerId,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "salesPersonId") String? salesPersonId,
    @JsonKey(name: "latitude") String latitude,
    @JsonKey(name: "longitude") String longitude,
    @JsonKey(name: "deliveryName") String? deliveryName,
    @JsonKey(name: "postalAddress") String postalAddress,
    @JsonKey(name: "location") String location,
    @JsonKey(name: "isPrimary") bool isPrimary,
    @JsonKey(name: "companyId") int companyId,
    @JsonKey(name: "companyCode") String companyCode,
    @JsonKey(name: "createAt") DateTime createAt,
    @JsonKey(name: "updatedAt") DateTime updatedAt,
  });
}

/// @nodoc
class __$$CustomerAddressDataImplCopyWithImpl<$Res>
    extends _$CustomerAddressDataCopyWithImpl<$Res, _$CustomerAddressDataImpl>
    implements _$$CustomerAddressDataImplCopyWith<$Res> {
  __$$CustomerAddressDataImplCopyWithImpl(
    _$CustomerAddressDataImpl _value,
    $Res Function(_$CustomerAddressDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerAddressData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? address = freezed,
    Object? salesPersonId = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? deliveryName = freezed,
    Object? postalAddress = null,
    Object? location = null,
    Object? isPrimary = null,
    Object? companyId = null,
    Object? companyCode = null,
    Object? createAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$CustomerAddressDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        customerId: null == customerId
            ? _value.customerId
            : customerId // ignore: cast_nullable_to_non_nullable
                  as String,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        salesPersonId: freezed == salesPersonId
            ? _value.salesPersonId
            : salesPersonId // ignore: cast_nullable_to_non_nullable
                  as String?,
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as String,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as String,
        deliveryName: freezed == deliveryName
            ? _value.deliveryName
            : deliveryName // ignore: cast_nullable_to_non_nullable
                  as String?,
        postalAddress: null == postalAddress
            ? _value.postalAddress
            : postalAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
        isPrimary: null == isPrimary
            ? _value.isPrimary
            : isPrimary // ignore: cast_nullable_to_non_nullable
                  as bool,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerAddressDataImpl implements _CustomerAddressData {
  const _$CustomerAddressDataImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "customerId") required this.customerId,
    @JsonKey(name: "address") this.address,
    @JsonKey(name: "salesPersonId") this.salesPersonId,
    @JsonKey(name: "latitude") required this.latitude,
    @JsonKey(name: "longitude") required this.longitude,
    @JsonKey(name: "deliveryName") this.deliveryName,
    @JsonKey(name: "postalAddress") required this.postalAddress,
    @JsonKey(name: "location") required this.location,
    @JsonKey(name: "isPrimary") required this.isPrimary,
    @JsonKey(name: "companyId") required this.companyId,
    @JsonKey(name: "companyCode") required this.companyCode,
    @JsonKey(name: "createAt") required this.createAt,
    @JsonKey(name: "updatedAt") required this.updatedAt,
  });

  factory _$CustomerAddressDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerAddressDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "customerId")
  final String customerId;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "salesPersonId")
  final String? salesPersonId;
  @override
  @JsonKey(name: "latitude")
  final String latitude;
  @override
  @JsonKey(name: "longitude")
  final String longitude;
  @override
  @JsonKey(name: "deliveryName")
  final String? deliveryName;
  @override
  @JsonKey(name: "postalAddress")
  final String postalAddress;
  @override
  @JsonKey(name: "location")
  final String location;
  @override
  @JsonKey(name: "isPrimary")
  final bool isPrimary;
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
    return 'CustomerAddressData(id: $id, customerId: $customerId, address: $address, salesPersonId: $salesPersonId, latitude: $latitude, longitude: $longitude, deliveryName: $deliveryName, postalAddress: $postalAddress, location: $location, isPrimary: $isPrimary, companyId: $companyId, companyCode: $companyCode, createAt: $createAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerAddressDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.salesPersonId, salesPersonId) ||
                other.salesPersonId == salesPersonId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.deliveryName, deliveryName) ||
                other.deliveryName == deliveryName) &&
            (identical(other.postalAddress, postalAddress) ||
                other.postalAddress == postalAddress) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
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
  int get hashCode => Object.hash(
    runtimeType,
    id,
    customerId,
    address,
    salesPersonId,
    latitude,
    longitude,
    deliveryName,
    postalAddress,
    location,
    isPrimary,
    companyId,
    companyCode,
    createAt,
    updatedAt,
  );

  /// Create a copy of CustomerAddressData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerAddressDataImplCopyWith<_$CustomerAddressDataImpl> get copyWith =>
      __$$CustomerAddressDataImplCopyWithImpl<_$CustomerAddressDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerAddressDataImplToJson(this);
  }
}

abstract class _CustomerAddressData implements CustomerAddressData {
  const factory _CustomerAddressData({
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "customerId") required final String customerId,
    @JsonKey(name: "address") final String? address,
    @JsonKey(name: "salesPersonId") final String? salesPersonId,
    @JsonKey(name: "latitude") required final String latitude,
    @JsonKey(name: "longitude") required final String longitude,
    @JsonKey(name: "deliveryName") final String? deliveryName,
    @JsonKey(name: "postalAddress") required final String postalAddress,
    @JsonKey(name: "location") required final String location,
    @JsonKey(name: "isPrimary") required final bool isPrimary,
    @JsonKey(name: "companyId") required final int companyId,
    @JsonKey(name: "companyCode") required final String companyCode,
    @JsonKey(name: "createAt") required final DateTime createAt,
    @JsonKey(name: "updatedAt") required final DateTime updatedAt,
  }) = _$CustomerAddressDataImpl;

  factory _CustomerAddressData.fromJson(Map<String, dynamic> json) =
      _$CustomerAddressDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "customerId")
  String get customerId;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "salesPersonId")
  String? get salesPersonId;
  @override
  @JsonKey(name: "latitude")
  String get latitude;
  @override
  @JsonKey(name: "longitude")
  String get longitude;
  @override
  @JsonKey(name: "deliveryName")
  String? get deliveryName;
  @override
  @JsonKey(name: "postalAddress")
  String get postalAddress;
  @override
  @JsonKey(name: "location")
  String get location;
  @override
  @JsonKey(name: "isPrimary")
  bool get isPrimary;
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

  /// Create a copy of CustomerAddressData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerAddressDataImplCopyWith<_$CustomerAddressDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
