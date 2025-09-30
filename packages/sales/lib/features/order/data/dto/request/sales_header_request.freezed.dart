// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_header_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesHeaderRequest {

 int? get id; String get salesId; String get customerId; String get customerName; String get customerAddress; String get salesPersonId; String get customerRequisition; String get customerPriceGroup; String get note; String get deliveryAddressLocation; String get deliveryDate; String get transactionDate; String get deviceId; int get syncStatus; int get companyId;
/// Create a copy of SalesHeaderRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesHeaderRequestCopyWith<SalesHeaderRequest> get copyWith => _$SalesHeaderRequestCopyWithImpl<SalesHeaderRequest>(this as SalesHeaderRequest, _$identity);

  /// Serializes this SalesHeaderRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesHeaderRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.salesId, salesId) || other.salesId == salesId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.customerRequisition, customerRequisition) || other.customerRequisition == customerRequisition)&&(identical(other.customerPriceGroup, customerPriceGroup) || other.customerPriceGroup == customerPriceGroup)&&(identical(other.note, note) || other.note == note)&&(identical(other.deliveryAddressLocation, deliveryAddressLocation) || other.deliveryAddressLocation == deliveryAddressLocation)&&(identical(other.deliveryDate, deliveryDate) || other.deliveryDate == deliveryDate)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.syncStatus, syncStatus) || other.syncStatus == syncStatus)&&(identical(other.companyId, companyId) || other.companyId == companyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,salesId,customerId,customerName,customerAddress,salesPersonId,customerRequisition,customerPriceGroup,note,deliveryAddressLocation,deliveryDate,transactionDate,deviceId,syncStatus,companyId);

@override
String toString() {
  return 'SalesHeaderRequest(id: $id, salesId: $salesId, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, salesPersonId: $salesPersonId, customerRequisition: $customerRequisition, customerPriceGroup: $customerPriceGroup, note: $note, deliveryAddressLocation: $deliveryAddressLocation, deliveryDate: $deliveryDate, transactionDate: $transactionDate, deviceId: $deviceId, syncStatus: $syncStatus, companyId: $companyId)';
}


}

/// @nodoc
abstract mixin class $SalesHeaderRequestCopyWith<$Res>  {
  factory $SalesHeaderRequestCopyWith(SalesHeaderRequest value, $Res Function(SalesHeaderRequest) _then) = _$SalesHeaderRequestCopyWithImpl;
@useResult
$Res call({
 int? id, String salesId, String customerId, String customerName, String customerAddress, String salesPersonId, String customerRequisition, String customerPriceGroup, String note, String deliveryAddressLocation, String deliveryDate, String transactionDate, String deviceId, int syncStatus, int companyId
});




}
/// @nodoc
class _$SalesHeaderRequestCopyWithImpl<$Res>
    implements $SalesHeaderRequestCopyWith<$Res> {
  _$SalesHeaderRequestCopyWithImpl(this._self, this._then);

  final SalesHeaderRequest _self;
  final $Res Function(SalesHeaderRequest) _then;

/// Create a copy of SalesHeaderRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? salesId = null,Object? customerId = null,Object? customerName = null,Object? customerAddress = null,Object? salesPersonId = null,Object? customerRequisition = null,Object? customerPriceGroup = null,Object? note = null,Object? deliveryAddressLocation = null,Object? deliveryDate = null,Object? transactionDate = null,Object? deviceId = null,Object? syncStatus = null,Object? companyId = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,salesId: null == salesId ? _self.salesId : salesId // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,salesPersonId: null == salesPersonId ? _self.salesPersonId : salesPersonId // ignore: cast_nullable_to_non_nullable
as String,customerRequisition: null == customerRequisition ? _self.customerRequisition : customerRequisition // ignore: cast_nullable_to_non_nullable
as String,customerPriceGroup: null == customerPriceGroup ? _self.customerPriceGroup : customerPriceGroup // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressLocation: null == deliveryAddressLocation ? _self.deliveryAddressLocation : deliveryAddressLocation // ignore: cast_nullable_to_non_nullable
as String,deliveryDate: null == deliveryDate ? _self.deliveryDate : deliveryDate // ignore: cast_nullable_to_non_nullable
as String,transactionDate: null == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,syncStatus: null == syncStatus ? _self.syncStatus : syncStatus // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesHeaderRequest].
extension SalesHeaderRequestPatterns on SalesHeaderRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesHeaderRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesHeaderRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesHeaderRequest value)  $default,){
final _that = this;
switch (_that) {
case _SalesHeaderRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesHeaderRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SalesHeaderRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String salesId,  String customerId,  String customerName,  String customerAddress,  String salesPersonId,  String customerRequisition,  String customerPriceGroup,  String note,  String deliveryAddressLocation,  String deliveryDate,  String transactionDate,  String deviceId,  int syncStatus,  int companyId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesHeaderRequest() when $default != null:
return $default(_that.id,_that.salesId,_that.customerId,_that.customerName,_that.customerAddress,_that.salesPersonId,_that.customerRequisition,_that.customerPriceGroup,_that.note,_that.deliveryAddressLocation,_that.deliveryDate,_that.transactionDate,_that.deviceId,_that.syncStatus,_that.companyId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String salesId,  String customerId,  String customerName,  String customerAddress,  String salesPersonId,  String customerRequisition,  String customerPriceGroup,  String note,  String deliveryAddressLocation,  String deliveryDate,  String transactionDate,  String deviceId,  int syncStatus,  int companyId)  $default,) {final _that = this;
switch (_that) {
case _SalesHeaderRequest():
return $default(_that.id,_that.salesId,_that.customerId,_that.customerName,_that.customerAddress,_that.salesPersonId,_that.customerRequisition,_that.customerPriceGroup,_that.note,_that.deliveryAddressLocation,_that.deliveryDate,_that.transactionDate,_that.deviceId,_that.syncStatus,_that.companyId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String salesId,  String customerId,  String customerName,  String customerAddress,  String salesPersonId,  String customerRequisition,  String customerPriceGroup,  String note,  String deliveryAddressLocation,  String deliveryDate,  String transactionDate,  String deviceId,  int syncStatus,  int companyId)?  $default,) {final _that = this;
switch (_that) {
case _SalesHeaderRequest() when $default != null:
return $default(_that.id,_that.salesId,_that.customerId,_that.customerName,_that.customerAddress,_that.salesPersonId,_that.customerRequisition,_that.customerPriceGroup,_that.note,_that.deliveryAddressLocation,_that.deliveryDate,_that.transactionDate,_that.deviceId,_that.syncStatus,_that.companyId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesHeaderRequest implements SalesHeaderRequest {
   _SalesHeaderRequest({this.id, required this.salesId, required this.customerId, required this.customerName, required this.customerAddress, required this.salesPersonId, required this.customerRequisition, required this.customerPriceGroup, required this.note, required this.deliveryAddressLocation, required this.deliveryDate, required this.transactionDate, required this.deviceId, required this.syncStatus, required this.companyId});
  factory _SalesHeaderRequest.fromJson(Map<String, dynamic> json) => _$SalesHeaderRequestFromJson(json);

@override final  int? id;
@override final  String salesId;
@override final  String customerId;
@override final  String customerName;
@override final  String customerAddress;
@override final  String salesPersonId;
@override final  String customerRequisition;
@override final  String customerPriceGroup;
@override final  String note;
@override final  String deliveryAddressLocation;
@override final  String deliveryDate;
@override final  String transactionDate;
@override final  String deviceId;
@override final  int syncStatus;
@override final  int companyId;

/// Create a copy of SalesHeaderRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesHeaderRequestCopyWith<_SalesHeaderRequest> get copyWith => __$SalesHeaderRequestCopyWithImpl<_SalesHeaderRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesHeaderRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesHeaderRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.salesId, salesId) || other.salesId == salesId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.customerRequisition, customerRequisition) || other.customerRequisition == customerRequisition)&&(identical(other.customerPriceGroup, customerPriceGroup) || other.customerPriceGroup == customerPriceGroup)&&(identical(other.note, note) || other.note == note)&&(identical(other.deliveryAddressLocation, deliveryAddressLocation) || other.deliveryAddressLocation == deliveryAddressLocation)&&(identical(other.deliveryDate, deliveryDate) || other.deliveryDate == deliveryDate)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.syncStatus, syncStatus) || other.syncStatus == syncStatus)&&(identical(other.companyId, companyId) || other.companyId == companyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,salesId,customerId,customerName,customerAddress,salesPersonId,customerRequisition,customerPriceGroup,note,deliveryAddressLocation,deliveryDate,transactionDate,deviceId,syncStatus,companyId);

@override
String toString() {
  return 'SalesHeaderRequest(id: $id, salesId: $salesId, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, salesPersonId: $salesPersonId, customerRequisition: $customerRequisition, customerPriceGroup: $customerPriceGroup, note: $note, deliveryAddressLocation: $deliveryAddressLocation, deliveryDate: $deliveryDate, transactionDate: $transactionDate, deviceId: $deviceId, syncStatus: $syncStatus, companyId: $companyId)';
}


}

/// @nodoc
abstract mixin class _$SalesHeaderRequestCopyWith<$Res> implements $SalesHeaderRequestCopyWith<$Res> {
  factory _$SalesHeaderRequestCopyWith(_SalesHeaderRequest value, $Res Function(_SalesHeaderRequest) _then) = __$SalesHeaderRequestCopyWithImpl;
@override @useResult
$Res call({
 int? id, String salesId, String customerId, String customerName, String customerAddress, String salesPersonId, String customerRequisition, String customerPriceGroup, String note, String deliveryAddressLocation, String deliveryDate, String transactionDate, String deviceId, int syncStatus, int companyId
});




}
/// @nodoc
class __$SalesHeaderRequestCopyWithImpl<$Res>
    implements _$SalesHeaderRequestCopyWith<$Res> {
  __$SalesHeaderRequestCopyWithImpl(this._self, this._then);

  final _SalesHeaderRequest _self;
  final $Res Function(_SalesHeaderRequest) _then;

/// Create a copy of SalesHeaderRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? salesId = null,Object? customerId = null,Object? customerName = null,Object? customerAddress = null,Object? salesPersonId = null,Object? customerRequisition = null,Object? customerPriceGroup = null,Object? note = null,Object? deliveryAddressLocation = null,Object? deliveryDate = null,Object? transactionDate = null,Object? deviceId = null,Object? syncStatus = null,Object? companyId = null,}) {
  return _then(_SalesHeaderRequest(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,salesId: null == salesId ? _self.salesId : salesId // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,salesPersonId: null == salesPersonId ? _self.salesPersonId : salesPersonId // ignore: cast_nullable_to_non_nullable
as String,customerRequisition: null == customerRequisition ? _self.customerRequisition : customerRequisition // ignore: cast_nullable_to_non_nullable
as String,customerPriceGroup: null == customerPriceGroup ? _self.customerPriceGroup : customerPriceGroup // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,deliveryAddressLocation: null == deliveryAddressLocation ? _self.deliveryAddressLocation : deliveryAddressLocation // ignore: cast_nullable_to_non_nullable
as String,deliveryDate: null == deliveryDate ? _self.deliveryDate : deliveryDate // ignore: cast_nullable_to_non_nullable
as String,transactionDate: null == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,syncStatus: null == syncStatus ? _self.syncStatus : syncStatus // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
