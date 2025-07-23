// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_site_visit_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateSiteVisitRequest _$CreateSiteVisitRequestFromJson(
  Map<String, dynamic> json,
) {
  return _CreateSiteVisitRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateSiteVisitRequest {
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
  double get customerLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerLongitude')
  double get customerLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeIn')
  String get timeIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeOut')
  String? get timeOut => throw _privateConstructorUsedError;

  /// Serializes this CreateSiteVisitRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSiteVisitRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSiteVisitRequestCopyWith<CreateSiteVisitRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSiteVisitRequestCopyWith<$Res> {
  factory $CreateSiteVisitRequestCopyWith(
    CreateSiteVisitRequest value,
    $Res Function(CreateSiteVisitRequest) then,
  ) = _$CreateSiteVisitRequestCopyWithImpl<$Res, CreateSiteVisitRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'deviceId') String deviceId,
    @JsonKey(name: 'salesPersonCode') String salesPersonCode,
    @JsonKey(name: 'salesPersonName') String salesPersonName,
    @JsonKey(name: 'customerId') String customerId,
    @JsonKey(name: 'customerName') String customerName,
    @JsonKey(name: 'customerAddress') String customerAddress,
    @JsonKey(name: 'customerChain') String customerChain,
    @JsonKey(name: 'customerLatitude') double customerLatitude,
    @JsonKey(name: 'customerLongitude') double customerLongitude,
    @JsonKey(name: 'timeIn') String timeIn,
    @JsonKey(name: 'timeOut') String? timeOut,
  });
}

/// @nodoc
class _$CreateSiteVisitRequestCopyWithImpl<
  $Res,
  $Val extends CreateSiteVisitRequest
>
    implements $CreateSiteVisitRequestCopyWith<$Res> {
  _$CreateSiteVisitRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSiteVisitRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
  }) {
    return _then(
      _value.copyWith(
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
                      as double,
            customerLongitude: null == customerLongitude
                ? _value.customerLongitude
                : customerLongitude // ignore: cast_nullable_to_non_nullable
                      as double,
            timeIn: null == timeIn
                ? _value.timeIn
                : timeIn // ignore: cast_nullable_to_non_nullable
                      as String,
            timeOut: freezed == timeOut
                ? _value.timeOut
                : timeOut // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateSiteVisitRequestImplCopyWith<$Res>
    implements $CreateSiteVisitRequestCopyWith<$Res> {
  factory _$$CreateSiteVisitRequestImplCopyWith(
    _$CreateSiteVisitRequestImpl value,
    $Res Function(_$CreateSiteVisitRequestImpl) then,
  ) = __$$CreateSiteVisitRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'deviceId') String deviceId,
    @JsonKey(name: 'salesPersonCode') String salesPersonCode,
    @JsonKey(name: 'salesPersonName') String salesPersonName,
    @JsonKey(name: 'customerId') String customerId,
    @JsonKey(name: 'customerName') String customerName,
    @JsonKey(name: 'customerAddress') String customerAddress,
    @JsonKey(name: 'customerChain') String customerChain,
    @JsonKey(name: 'customerLatitude') double customerLatitude,
    @JsonKey(name: 'customerLongitude') double customerLongitude,
    @JsonKey(name: 'timeIn') String timeIn,
    @JsonKey(name: 'timeOut') String? timeOut,
  });
}

/// @nodoc
class __$$CreateSiteVisitRequestImplCopyWithImpl<$Res>
    extends
        _$CreateSiteVisitRequestCopyWithImpl<$Res, _$CreateSiteVisitRequestImpl>
    implements _$$CreateSiteVisitRequestImplCopyWith<$Res> {
  __$$CreateSiteVisitRequestImplCopyWithImpl(
    _$CreateSiteVisitRequestImpl _value,
    $Res Function(_$CreateSiteVisitRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateSiteVisitRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
  }) {
    return _then(
      _$CreateSiteVisitRequestImpl(
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
                  as double,
        customerLongitude: null == customerLongitude
            ? _value.customerLongitude
            : customerLongitude // ignore: cast_nullable_to_non_nullable
                  as double,
        timeIn: null == timeIn
            ? _value.timeIn
            : timeIn // ignore: cast_nullable_to_non_nullable
                  as String,
        timeOut: freezed == timeOut
            ? _value.timeOut
            : timeOut // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSiteVisitRequestImpl implements _CreateSiteVisitRequest {
  const _$CreateSiteVisitRequestImpl({
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
  });

  factory _$CreateSiteVisitRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSiteVisitRequestImplFromJson(json);

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
  final double customerLatitude;
  @override
  @JsonKey(name: 'customerLongitude')
  final double customerLongitude;
  @override
  @JsonKey(name: 'timeIn')
  final String timeIn;
  @override
  @JsonKey(name: 'timeOut')
  final String? timeOut;

  @override
  String toString() {
    return 'CreateSiteVisitRequest(deviceId: $deviceId, salesPersonCode: $salesPersonCode, salesPersonName: $salesPersonName, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, customerChain: $customerChain, customerLatitude: $customerLatitude, customerLongitude: $customerLongitude, timeIn: $timeIn, timeOut: $timeOut)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSiteVisitRequestImpl &&
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
            (identical(other.timeOut, timeOut) || other.timeOut == timeOut));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
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
  );

  /// Create a copy of CreateSiteVisitRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSiteVisitRequestImplCopyWith<_$CreateSiteVisitRequestImpl>
  get copyWith =>
      __$$CreateSiteVisitRequestImplCopyWithImpl<_$CreateSiteVisitRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSiteVisitRequestImplToJson(this);
  }
}

abstract class _CreateSiteVisitRequest implements CreateSiteVisitRequest {
  const factory _CreateSiteVisitRequest({
    @JsonKey(name: 'deviceId') required final String deviceId,
    @JsonKey(name: 'salesPersonCode') required final String salesPersonCode,
    @JsonKey(name: 'salesPersonName') required final String salesPersonName,
    @JsonKey(name: 'customerId') required final String customerId,
    @JsonKey(name: 'customerName') required final String customerName,
    @JsonKey(name: 'customerAddress') required final String customerAddress,
    @JsonKey(name: 'customerChain') required final String customerChain,
    @JsonKey(name: 'customerLatitude') required final double customerLatitude,
    @JsonKey(name: 'customerLongitude') required final double customerLongitude,
    @JsonKey(name: 'timeIn') required final String timeIn,
    @JsonKey(name: 'timeOut') final String? timeOut,
  }) = _$CreateSiteVisitRequestImpl;

  factory _CreateSiteVisitRequest.fromJson(Map<String, dynamic> json) =
      _$CreateSiteVisitRequestImpl.fromJson;

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
  double get customerLatitude;
  @override
  @JsonKey(name: 'customerLongitude')
  double get customerLongitude;
  @override
  @JsonKey(name: 'timeIn')
  String get timeIn;
  @override
  @JsonKey(name: 'timeOut')
  String? get timeOut;

  /// Create a copy of CreateSiteVisitRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSiteVisitRequestImplCopyWith<_$CreateSiteVisitRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
