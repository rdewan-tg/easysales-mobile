// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_site_visit_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSiteVisitRequest {

@JsonKey(name: 'deviceId') String get deviceId;@JsonKey(name: 'salesPersonCode') String get salesPersonCode;@JsonKey(name: 'salesPersonName') String get salesPersonName;@JsonKey(name: 'customerId') String get customerId;@JsonKey(name: 'customerName') String get customerName;@JsonKey(name: 'customerAddress') String get customerAddress;@JsonKey(name: 'customerChain') String get customerChain;@JsonKey(name: 'customerLatitude') double get customerLatitude;@JsonKey(name: 'customerLongitude') double get customerLongitude;@JsonKey(name: 'timeIn') String get timeIn;@JsonKey(name: 'timeOut') String? get timeOut;
/// Create a copy of CreateSiteVisitRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSiteVisitRequestCopyWith<CreateSiteVisitRequest> get copyWith => _$CreateSiteVisitRequestCopyWithImpl<CreateSiteVisitRequest>(this as CreateSiteVisitRequest, _$identity);

  /// Serializes this CreateSiteVisitRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSiteVisitRequest&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.salesPersonCode, salesPersonCode) || other.salesPersonCode == salesPersonCode)&&(identical(other.salesPersonName, salesPersonName) || other.salesPersonName == salesPersonName)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress)&&(identical(other.customerChain, customerChain) || other.customerChain == customerChain)&&(identical(other.customerLatitude, customerLatitude) || other.customerLatitude == customerLatitude)&&(identical(other.customerLongitude, customerLongitude) || other.customerLongitude == customerLongitude)&&(identical(other.timeIn, timeIn) || other.timeIn == timeIn)&&(identical(other.timeOut, timeOut) || other.timeOut == timeOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,salesPersonCode,salesPersonName,customerId,customerName,customerAddress,customerChain,customerLatitude,customerLongitude,timeIn,timeOut);

@override
String toString() {
  return 'CreateSiteVisitRequest(deviceId: $deviceId, salesPersonCode: $salesPersonCode, salesPersonName: $salesPersonName, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, customerChain: $customerChain, customerLatitude: $customerLatitude, customerLongitude: $customerLongitude, timeIn: $timeIn, timeOut: $timeOut)';
}


}

/// @nodoc
abstract mixin class $CreateSiteVisitRequestCopyWith<$Res>  {
  factory $CreateSiteVisitRequestCopyWith(CreateSiteVisitRequest value, $Res Function(CreateSiteVisitRequest) _then) = _$CreateSiteVisitRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'deviceId') String deviceId,@JsonKey(name: 'salesPersonCode') String salesPersonCode,@JsonKey(name: 'salesPersonName') String salesPersonName,@JsonKey(name: 'customerId') String customerId,@JsonKey(name: 'customerName') String customerName,@JsonKey(name: 'customerAddress') String customerAddress,@JsonKey(name: 'customerChain') String customerChain,@JsonKey(name: 'customerLatitude') double customerLatitude,@JsonKey(name: 'customerLongitude') double customerLongitude,@JsonKey(name: 'timeIn') String timeIn,@JsonKey(name: 'timeOut') String? timeOut
});




}
/// @nodoc
class _$CreateSiteVisitRequestCopyWithImpl<$Res>
    implements $CreateSiteVisitRequestCopyWith<$Res> {
  _$CreateSiteVisitRequestCopyWithImpl(this._self, this._then);

  final CreateSiteVisitRequest _self;
  final $Res Function(CreateSiteVisitRequest) _then;

/// Create a copy of CreateSiteVisitRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = null,Object? salesPersonCode = null,Object? salesPersonName = null,Object? customerId = null,Object? customerName = null,Object? customerAddress = null,Object? customerChain = null,Object? customerLatitude = null,Object? customerLongitude = null,Object? timeIn = null,Object? timeOut = freezed,}) {
  return _then(_self.copyWith(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,salesPersonCode: null == salesPersonCode ? _self.salesPersonCode : salesPersonCode // ignore: cast_nullable_to_non_nullable
as String,salesPersonName: null == salesPersonName ? _self.salesPersonName : salesPersonName // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,customerChain: null == customerChain ? _self.customerChain : customerChain // ignore: cast_nullable_to_non_nullable
as String,customerLatitude: null == customerLatitude ? _self.customerLatitude : customerLatitude // ignore: cast_nullable_to_non_nullable
as double,customerLongitude: null == customerLongitude ? _self.customerLongitude : customerLongitude // ignore: cast_nullable_to_non_nullable
as double,timeIn: null == timeIn ? _self.timeIn : timeIn // ignore: cast_nullable_to_non_nullable
as String,timeOut: freezed == timeOut ? _self.timeOut : timeOut // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSiteVisitRequest].
extension CreateSiteVisitRequestPatterns on CreateSiteVisitRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSiteVisitRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSiteVisitRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSiteVisitRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateSiteVisitRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSiteVisitRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSiteVisitRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'deviceId')  String deviceId, @JsonKey(name: 'salesPersonCode')  String salesPersonCode, @JsonKey(name: 'salesPersonName')  String salesPersonName, @JsonKey(name: 'customerId')  String customerId, @JsonKey(name: 'customerName')  String customerName, @JsonKey(name: 'customerAddress')  String customerAddress, @JsonKey(name: 'customerChain')  String customerChain, @JsonKey(name: 'customerLatitude')  double customerLatitude, @JsonKey(name: 'customerLongitude')  double customerLongitude, @JsonKey(name: 'timeIn')  String timeIn, @JsonKey(name: 'timeOut')  String? timeOut)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSiteVisitRequest() when $default != null:
return $default(_that.deviceId,_that.salesPersonCode,_that.salesPersonName,_that.customerId,_that.customerName,_that.customerAddress,_that.customerChain,_that.customerLatitude,_that.customerLongitude,_that.timeIn,_that.timeOut);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'deviceId')  String deviceId, @JsonKey(name: 'salesPersonCode')  String salesPersonCode, @JsonKey(name: 'salesPersonName')  String salesPersonName, @JsonKey(name: 'customerId')  String customerId, @JsonKey(name: 'customerName')  String customerName, @JsonKey(name: 'customerAddress')  String customerAddress, @JsonKey(name: 'customerChain')  String customerChain, @JsonKey(name: 'customerLatitude')  double customerLatitude, @JsonKey(name: 'customerLongitude')  double customerLongitude, @JsonKey(name: 'timeIn')  String timeIn, @JsonKey(name: 'timeOut')  String? timeOut)  $default,) {final _that = this;
switch (_that) {
case _CreateSiteVisitRequest():
return $default(_that.deviceId,_that.salesPersonCode,_that.salesPersonName,_that.customerId,_that.customerName,_that.customerAddress,_that.customerChain,_that.customerLatitude,_that.customerLongitude,_that.timeIn,_that.timeOut);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'deviceId')  String deviceId, @JsonKey(name: 'salesPersonCode')  String salesPersonCode, @JsonKey(name: 'salesPersonName')  String salesPersonName, @JsonKey(name: 'customerId')  String customerId, @JsonKey(name: 'customerName')  String customerName, @JsonKey(name: 'customerAddress')  String customerAddress, @JsonKey(name: 'customerChain')  String customerChain, @JsonKey(name: 'customerLatitude')  double customerLatitude, @JsonKey(name: 'customerLongitude')  double customerLongitude, @JsonKey(name: 'timeIn')  String timeIn, @JsonKey(name: 'timeOut')  String? timeOut)?  $default,) {final _that = this;
switch (_that) {
case _CreateSiteVisitRequest() when $default != null:
return $default(_that.deviceId,_that.salesPersonCode,_that.salesPersonName,_that.customerId,_that.customerName,_that.customerAddress,_that.customerChain,_that.customerLatitude,_that.customerLongitude,_that.timeIn,_that.timeOut);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSiteVisitRequest implements CreateSiteVisitRequest {
  const _CreateSiteVisitRequest({@JsonKey(name: 'deviceId') required this.deviceId, @JsonKey(name: 'salesPersonCode') required this.salesPersonCode, @JsonKey(name: 'salesPersonName') required this.salesPersonName, @JsonKey(name: 'customerId') required this.customerId, @JsonKey(name: 'customerName') required this.customerName, @JsonKey(name: 'customerAddress') required this.customerAddress, @JsonKey(name: 'customerChain') required this.customerChain, @JsonKey(name: 'customerLatitude') required this.customerLatitude, @JsonKey(name: 'customerLongitude') required this.customerLongitude, @JsonKey(name: 'timeIn') required this.timeIn, @JsonKey(name: 'timeOut') this.timeOut});
  factory _CreateSiteVisitRequest.fromJson(Map<String, dynamic> json) => _$CreateSiteVisitRequestFromJson(json);

@override@JsonKey(name: 'deviceId') final  String deviceId;
@override@JsonKey(name: 'salesPersonCode') final  String salesPersonCode;
@override@JsonKey(name: 'salesPersonName') final  String salesPersonName;
@override@JsonKey(name: 'customerId') final  String customerId;
@override@JsonKey(name: 'customerName') final  String customerName;
@override@JsonKey(name: 'customerAddress') final  String customerAddress;
@override@JsonKey(name: 'customerChain') final  String customerChain;
@override@JsonKey(name: 'customerLatitude') final  double customerLatitude;
@override@JsonKey(name: 'customerLongitude') final  double customerLongitude;
@override@JsonKey(name: 'timeIn') final  String timeIn;
@override@JsonKey(name: 'timeOut') final  String? timeOut;

/// Create a copy of CreateSiteVisitRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSiteVisitRequestCopyWith<_CreateSiteVisitRequest> get copyWith => __$CreateSiteVisitRequestCopyWithImpl<_CreateSiteVisitRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSiteVisitRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSiteVisitRequest&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.salesPersonCode, salesPersonCode) || other.salesPersonCode == salesPersonCode)&&(identical(other.salesPersonName, salesPersonName) || other.salesPersonName == salesPersonName)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress)&&(identical(other.customerChain, customerChain) || other.customerChain == customerChain)&&(identical(other.customerLatitude, customerLatitude) || other.customerLatitude == customerLatitude)&&(identical(other.customerLongitude, customerLongitude) || other.customerLongitude == customerLongitude)&&(identical(other.timeIn, timeIn) || other.timeIn == timeIn)&&(identical(other.timeOut, timeOut) || other.timeOut == timeOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,salesPersonCode,salesPersonName,customerId,customerName,customerAddress,customerChain,customerLatitude,customerLongitude,timeIn,timeOut);

@override
String toString() {
  return 'CreateSiteVisitRequest(deviceId: $deviceId, salesPersonCode: $salesPersonCode, salesPersonName: $salesPersonName, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, customerChain: $customerChain, customerLatitude: $customerLatitude, customerLongitude: $customerLongitude, timeIn: $timeIn, timeOut: $timeOut)';
}


}

/// @nodoc
abstract mixin class _$CreateSiteVisitRequestCopyWith<$Res> implements $CreateSiteVisitRequestCopyWith<$Res> {
  factory _$CreateSiteVisitRequestCopyWith(_CreateSiteVisitRequest value, $Res Function(_CreateSiteVisitRequest) _then) = __$CreateSiteVisitRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'deviceId') String deviceId,@JsonKey(name: 'salesPersonCode') String salesPersonCode,@JsonKey(name: 'salesPersonName') String salesPersonName,@JsonKey(name: 'customerId') String customerId,@JsonKey(name: 'customerName') String customerName,@JsonKey(name: 'customerAddress') String customerAddress,@JsonKey(name: 'customerChain') String customerChain,@JsonKey(name: 'customerLatitude') double customerLatitude,@JsonKey(name: 'customerLongitude') double customerLongitude,@JsonKey(name: 'timeIn') String timeIn,@JsonKey(name: 'timeOut') String? timeOut
});




}
/// @nodoc
class __$CreateSiteVisitRequestCopyWithImpl<$Res>
    implements _$CreateSiteVisitRequestCopyWith<$Res> {
  __$CreateSiteVisitRequestCopyWithImpl(this._self, this._then);

  final _CreateSiteVisitRequest _self;
  final $Res Function(_CreateSiteVisitRequest) _then;

/// Create a copy of CreateSiteVisitRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? salesPersonCode = null,Object? salesPersonName = null,Object? customerId = null,Object? customerName = null,Object? customerAddress = null,Object? customerChain = null,Object? customerLatitude = null,Object? customerLongitude = null,Object? timeIn = null,Object? timeOut = freezed,}) {
  return _then(_CreateSiteVisitRequest(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,salesPersonCode: null == salesPersonCode ? _self.salesPersonCode : salesPersonCode // ignore: cast_nullable_to_non_nullable
as String,salesPersonName: null == salesPersonName ? _self.salesPersonName : salesPersonName // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,customerChain: null == customerChain ? _self.customerChain : customerChain // ignore: cast_nullable_to_non_nullable
as String,customerLatitude: null == customerLatitude ? _self.customerLatitude : customerLatitude // ignore: cast_nullable_to_non_nullable
as double,customerLongitude: null == customerLongitude ? _self.customerLongitude : customerLongitude // ignore: cast_nullable_to_non_nullable
as double,timeIn: null == timeIn ? _self.timeIn : timeIn // ignore: cast_nullable_to_non_nullable
as String,timeOut: freezed == timeOut ? _self.timeOut : timeOut // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
