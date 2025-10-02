// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_header_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesHeaderResponse {

 String get status; SalesHeaderData get data;
/// Create a copy of SalesHeaderResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesHeaderResponseCopyWith<SalesHeaderResponse> get copyWith => _$SalesHeaderResponseCopyWithImpl<SalesHeaderResponse>(this as SalesHeaderResponse, _$identity);

  /// Serializes this SalesHeaderResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesHeaderResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'SalesHeaderResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $SalesHeaderResponseCopyWith<$Res>  {
  factory $SalesHeaderResponseCopyWith(SalesHeaderResponse value, $Res Function(SalesHeaderResponse) _then) = _$SalesHeaderResponseCopyWithImpl;
@useResult
$Res call({
 String status, SalesHeaderData data
});


$SalesHeaderDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SalesHeaderResponseCopyWithImpl<$Res>
    implements $SalesHeaderResponseCopyWith<$Res> {
  _$SalesHeaderResponseCopyWithImpl(this._self, this._then);

  final SalesHeaderResponse _self;
  final $Res Function(SalesHeaderResponse) _then;

/// Create a copy of SalesHeaderResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SalesHeaderData,
  ));
}
/// Create a copy of SalesHeaderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalesHeaderDataCopyWith<$Res> get data {
  
  return $SalesHeaderDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SalesHeaderResponse].
extension SalesHeaderResponsePatterns on SalesHeaderResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesHeaderResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesHeaderResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesHeaderResponse value)  $default,){
final _that = this;
switch (_that) {
case _SalesHeaderResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesHeaderResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SalesHeaderResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  SalesHeaderData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesHeaderResponse() when $default != null:
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  SalesHeaderData data)  $default,) {final _that = this;
switch (_that) {
case _SalesHeaderResponse():
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  SalesHeaderData data)?  $default,) {final _that = this;
switch (_that) {
case _SalesHeaderResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesHeaderResponse implements SalesHeaderResponse {
  const _SalesHeaderResponse({required this.status, required this.data});
  factory _SalesHeaderResponse.fromJson(Map<String, dynamic> json) => _$SalesHeaderResponseFromJson(json);

@override final  String status;
@override final  SalesHeaderData data;

/// Create a copy of SalesHeaderResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesHeaderResponseCopyWith<_SalesHeaderResponse> get copyWith => __$SalesHeaderResponseCopyWithImpl<_SalesHeaderResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesHeaderResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesHeaderResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'SalesHeaderResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SalesHeaderResponseCopyWith<$Res> implements $SalesHeaderResponseCopyWith<$Res> {
  factory _$SalesHeaderResponseCopyWith(_SalesHeaderResponse value, $Res Function(_SalesHeaderResponse) _then) = __$SalesHeaderResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, SalesHeaderData data
});


@override $SalesHeaderDataCopyWith<$Res> get data;

}
/// @nodoc
class __$SalesHeaderResponseCopyWithImpl<$Res>
    implements _$SalesHeaderResponseCopyWith<$Res> {
  __$SalesHeaderResponseCopyWithImpl(this._self, this._then);

  final _SalesHeaderResponse _self;
  final $Res Function(_SalesHeaderResponse) _then;

/// Create a copy of SalesHeaderResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_SalesHeaderResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SalesHeaderData,
  ));
}

/// Create a copy of SalesHeaderResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalesHeaderDataCopyWith<$Res> get data {
  
  return $SalesHeaderDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SalesHeaderData {

 int get id; String get salesId; String get customerId; String get customerName; String get customerAddress; String get salesPersonId; String get customerPriceGroup; String get deliveryAddressLocation; String get deliveryDate; String get transactionDate; String get deviceId; int get syncStatus; int get companyId;
/// Create a copy of SalesHeaderData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesHeaderDataCopyWith<SalesHeaderData> get copyWith => _$SalesHeaderDataCopyWithImpl<SalesHeaderData>(this as SalesHeaderData, _$identity);

  /// Serializes this SalesHeaderData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesHeaderData&&(identical(other.id, id) || other.id == id)&&(identical(other.salesId, salesId) || other.salesId == salesId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.customerPriceGroup, customerPriceGroup) || other.customerPriceGroup == customerPriceGroup)&&(identical(other.deliveryAddressLocation, deliveryAddressLocation) || other.deliveryAddressLocation == deliveryAddressLocation)&&(identical(other.deliveryDate, deliveryDate) || other.deliveryDate == deliveryDate)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.syncStatus, syncStatus) || other.syncStatus == syncStatus)&&(identical(other.companyId, companyId) || other.companyId == companyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,salesId,customerId,customerName,customerAddress,salesPersonId,customerPriceGroup,deliveryAddressLocation,deliveryDate,transactionDate,deviceId,syncStatus,companyId);

@override
String toString() {
  return 'SalesHeaderData(id: $id, salesId: $salesId, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, salesPersonId: $salesPersonId, customerPriceGroup: $customerPriceGroup, deliveryAddressLocation: $deliveryAddressLocation, deliveryDate: $deliveryDate, transactionDate: $transactionDate, deviceId: $deviceId, syncStatus: $syncStatus, companyId: $companyId)';
}


}

/// @nodoc
abstract mixin class $SalesHeaderDataCopyWith<$Res>  {
  factory $SalesHeaderDataCopyWith(SalesHeaderData value, $Res Function(SalesHeaderData) _then) = _$SalesHeaderDataCopyWithImpl;
@useResult
$Res call({
 int id, String salesId, String customerId, String customerName, String customerAddress, String salesPersonId, String customerPriceGroup, String deliveryAddressLocation, String deliveryDate, String transactionDate, String deviceId, int syncStatus, int companyId
});




}
/// @nodoc
class _$SalesHeaderDataCopyWithImpl<$Res>
    implements $SalesHeaderDataCopyWith<$Res> {
  _$SalesHeaderDataCopyWithImpl(this._self, this._then);

  final SalesHeaderData _self;
  final $Res Function(SalesHeaderData) _then;

/// Create a copy of SalesHeaderData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? salesId = null,Object? customerId = null,Object? customerName = null,Object? customerAddress = null,Object? salesPersonId = null,Object? customerPriceGroup = null,Object? deliveryAddressLocation = null,Object? deliveryDate = null,Object? transactionDate = null,Object? deviceId = null,Object? syncStatus = null,Object? companyId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,salesId: null == salesId ? _self.salesId : salesId // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,salesPersonId: null == salesPersonId ? _self.salesPersonId : salesPersonId // ignore: cast_nullable_to_non_nullable
as String,customerPriceGroup: null == customerPriceGroup ? _self.customerPriceGroup : customerPriceGroup // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [SalesHeaderData].
extension SalesHeaderDataPatterns on SalesHeaderData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesHeaderData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesHeaderData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesHeaderData value)  $default,){
final _that = this;
switch (_that) {
case _SalesHeaderData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesHeaderData value)?  $default,){
final _that = this;
switch (_that) {
case _SalesHeaderData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String salesId,  String customerId,  String customerName,  String customerAddress,  String salesPersonId,  String customerPriceGroup,  String deliveryAddressLocation,  String deliveryDate,  String transactionDate,  String deviceId,  int syncStatus,  int companyId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesHeaderData() when $default != null:
return $default(_that.id,_that.salesId,_that.customerId,_that.customerName,_that.customerAddress,_that.salesPersonId,_that.customerPriceGroup,_that.deliveryAddressLocation,_that.deliveryDate,_that.transactionDate,_that.deviceId,_that.syncStatus,_that.companyId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String salesId,  String customerId,  String customerName,  String customerAddress,  String salesPersonId,  String customerPriceGroup,  String deliveryAddressLocation,  String deliveryDate,  String transactionDate,  String deviceId,  int syncStatus,  int companyId)  $default,) {final _that = this;
switch (_that) {
case _SalesHeaderData():
return $default(_that.id,_that.salesId,_that.customerId,_that.customerName,_that.customerAddress,_that.salesPersonId,_that.customerPriceGroup,_that.deliveryAddressLocation,_that.deliveryDate,_that.transactionDate,_that.deviceId,_that.syncStatus,_that.companyId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String salesId,  String customerId,  String customerName,  String customerAddress,  String salesPersonId,  String customerPriceGroup,  String deliveryAddressLocation,  String deliveryDate,  String transactionDate,  String deviceId,  int syncStatus,  int companyId)?  $default,) {final _that = this;
switch (_that) {
case _SalesHeaderData() when $default != null:
return $default(_that.id,_that.salesId,_that.customerId,_that.customerName,_that.customerAddress,_that.salesPersonId,_that.customerPriceGroup,_that.deliveryAddressLocation,_that.deliveryDate,_that.transactionDate,_that.deviceId,_that.syncStatus,_that.companyId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesHeaderData implements SalesHeaderData {
  const _SalesHeaderData({required this.id, required this.salesId, required this.customerId, required this.customerName, required this.customerAddress, required this.salesPersonId, required this.customerPriceGroup, required this.deliveryAddressLocation, required this.deliveryDate, required this.transactionDate, required this.deviceId, required this.syncStatus, required this.companyId});
  factory _SalesHeaderData.fromJson(Map<String, dynamic> json) => _$SalesHeaderDataFromJson(json);

@override final  int id;
@override final  String salesId;
@override final  String customerId;
@override final  String customerName;
@override final  String customerAddress;
@override final  String salesPersonId;
@override final  String customerPriceGroup;
@override final  String deliveryAddressLocation;
@override final  String deliveryDate;
@override final  String transactionDate;
@override final  String deviceId;
@override final  int syncStatus;
@override final  int companyId;

/// Create a copy of SalesHeaderData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesHeaderDataCopyWith<_SalesHeaderData> get copyWith => __$SalesHeaderDataCopyWithImpl<_SalesHeaderData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesHeaderDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesHeaderData&&(identical(other.id, id) || other.id == id)&&(identical(other.salesId, salesId) || other.salesId == salesId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.customerPriceGroup, customerPriceGroup) || other.customerPriceGroup == customerPriceGroup)&&(identical(other.deliveryAddressLocation, deliveryAddressLocation) || other.deliveryAddressLocation == deliveryAddressLocation)&&(identical(other.deliveryDate, deliveryDate) || other.deliveryDate == deliveryDate)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.syncStatus, syncStatus) || other.syncStatus == syncStatus)&&(identical(other.companyId, companyId) || other.companyId == companyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,salesId,customerId,customerName,customerAddress,salesPersonId,customerPriceGroup,deliveryAddressLocation,deliveryDate,transactionDate,deviceId,syncStatus,companyId);

@override
String toString() {
  return 'SalesHeaderData(id: $id, salesId: $salesId, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, salesPersonId: $salesPersonId, customerPriceGroup: $customerPriceGroup, deliveryAddressLocation: $deliveryAddressLocation, deliveryDate: $deliveryDate, transactionDate: $transactionDate, deviceId: $deviceId, syncStatus: $syncStatus, companyId: $companyId)';
}


}

/// @nodoc
abstract mixin class _$SalesHeaderDataCopyWith<$Res> implements $SalesHeaderDataCopyWith<$Res> {
  factory _$SalesHeaderDataCopyWith(_SalesHeaderData value, $Res Function(_SalesHeaderData) _then) = __$SalesHeaderDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String salesId, String customerId, String customerName, String customerAddress, String salesPersonId, String customerPriceGroup, String deliveryAddressLocation, String deliveryDate, String transactionDate, String deviceId, int syncStatus, int companyId
});




}
/// @nodoc
class __$SalesHeaderDataCopyWithImpl<$Res>
    implements _$SalesHeaderDataCopyWith<$Res> {
  __$SalesHeaderDataCopyWithImpl(this._self, this._then);

  final _SalesHeaderData _self;
  final $Res Function(_SalesHeaderData) _then;

/// Create a copy of SalesHeaderData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? salesId = null,Object? customerId = null,Object? customerName = null,Object? customerAddress = null,Object? salesPersonId = null,Object? customerPriceGroup = null,Object? deliveryAddressLocation = null,Object? deliveryDate = null,Object? transactionDate = null,Object? deviceId = null,Object? syncStatus = null,Object? companyId = null,}) {
  return _then(_SalesHeaderData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,salesId: null == salesId ? _self.salesId : salesId // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,salesPersonId: null == salesPersonId ? _self.salesPersonId : salesPersonId // ignore: cast_nullable_to_non_nullable
as String,customerPriceGroup: null == customerPriceGroup ? _self.customerPriceGroup : customerPriceGroup // ignore: cast_nullable_to_non_nullable
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
