// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_address_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerAddressResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "total") int get total;@JsonKey(name: "data") List<CustomerAddressData> get data;
/// Create a copy of CustomerAddressResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerAddressResponseCopyWith<CustomerAddressResponse> get copyWith => _$CustomerAddressResponseCopyWithImpl<CustomerAddressResponse>(this as CustomerAddressResponse, _$identity);

  /// Serializes this CustomerAddressResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerAddressResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,total,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CustomerAddressResponse(status: $status, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class $CustomerAddressResponseCopyWith<$Res>  {
  factory $CustomerAddressResponseCopyWith(CustomerAddressResponse value, $Res Function(CustomerAddressResponse) _then) = _$CustomerAddressResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "total") int total,@JsonKey(name: "data") List<CustomerAddressData> data
});




}
/// @nodoc
class _$CustomerAddressResponseCopyWithImpl<$Res>
    implements $CustomerAddressResponseCopyWith<$Res> {
  _$CustomerAddressResponseCopyWithImpl(this._self, this._then);

  final CustomerAddressResponse _self;
  final $Res Function(CustomerAddressResponse) _then;

/// Create a copy of CustomerAddressResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? total = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CustomerAddressData>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerAddressResponse].
extension CustomerAddressResponsePatterns on CustomerAddressResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerAddressResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerAddressResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerAddressResponse value)  $default,){
final _that = this;
switch (_that) {
case _CustomerAddressResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerAddressResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerAddressResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<CustomerAddressData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerAddressResponse() when $default != null:
return $default(_that.status,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<CustomerAddressData> data)  $default,) {final _that = this;
switch (_that) {
case _CustomerAddressResponse():
return $default(_that.status,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<CustomerAddressData> data)?  $default,) {final _that = this;
switch (_that) {
case _CustomerAddressResponse() when $default != null:
return $default(_that.status,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerAddressResponse implements CustomerAddressResponse {
  const _CustomerAddressResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "total") required this.total, @JsonKey(name: "data") final  List<CustomerAddressData> data = const <CustomerAddressData>[]}): _data = data;
  factory _CustomerAddressResponse.fromJson(Map<String, dynamic> json) => _$CustomerAddressResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "total") final  int total;
 final  List<CustomerAddressData> _data;
@override@JsonKey(name: "data") List<CustomerAddressData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of CustomerAddressResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerAddressResponseCopyWith<_CustomerAddressResponse> get copyWith => __$CustomerAddressResponseCopyWithImpl<_CustomerAddressResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerAddressResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerAddressResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,total,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'CustomerAddressResponse(status: $status, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CustomerAddressResponseCopyWith<$Res> implements $CustomerAddressResponseCopyWith<$Res> {
  factory _$CustomerAddressResponseCopyWith(_CustomerAddressResponse value, $Res Function(_CustomerAddressResponse) _then) = __$CustomerAddressResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "total") int total,@JsonKey(name: "data") List<CustomerAddressData> data
});




}
/// @nodoc
class __$CustomerAddressResponseCopyWithImpl<$Res>
    implements _$CustomerAddressResponseCopyWith<$Res> {
  __$CustomerAddressResponseCopyWithImpl(this._self, this._then);

  final _CustomerAddressResponse _self;
  final $Res Function(_CustomerAddressResponse) _then;

/// Create a copy of CustomerAddressResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? total = null,Object? data = null,}) {
  return _then(_CustomerAddressResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CustomerAddressData>,
  ));
}


}


/// @nodoc
mixin _$CustomerAddressData {

@JsonKey(name: "id") int get id;@JsonKey(name: "customerId") String get customerId;@JsonKey(name: "address") String? get address;@JsonKey(name: "salesPersonId") String? get salesPersonId;@JsonKey(name: "latitude") String get latitude;@JsonKey(name: "longitude") String get longitude;@JsonKey(name: "deliveryName") String? get deliveryName;@JsonKey(name: "postalAddress") String get postalAddress;@JsonKey(name: "location") String get location;@JsonKey(name: "isPrimary") bool get isPrimary;@JsonKey(name: "companyId") int get companyId;@JsonKey(name: "companyCode") String get companyCode;@JsonKey(name: "createAt") DateTime get createAt;@JsonKey(name: "updatedAt") DateTime get updatedAt;
/// Create a copy of CustomerAddressData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerAddressDataCopyWith<CustomerAddressData> get copyWith => _$CustomerAddressDataCopyWithImpl<CustomerAddressData>(this as CustomerAddressData, _$identity);

  /// Serializes this CustomerAddressData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerAddressData&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.address, address) || other.address == address)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.deliveryName, deliveryName) || other.deliveryName == deliveryName)&&(identical(other.postalAddress, postalAddress) || other.postalAddress == postalAddress)&&(identical(other.location, location) || other.location == location)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerId,address,salesPersonId,latitude,longitude,deliveryName,postalAddress,location,isPrimary,companyId,companyCode,createAt,updatedAt);

@override
String toString() {
  return 'CustomerAddressData(id: $id, customerId: $customerId, address: $address, salesPersonId: $salesPersonId, latitude: $latitude, longitude: $longitude, deliveryName: $deliveryName, postalAddress: $postalAddress, location: $location, isPrimary: $isPrimary, companyId: $companyId, companyCode: $companyCode, createAt: $createAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CustomerAddressDataCopyWith<$Res>  {
  factory $CustomerAddressDataCopyWith(CustomerAddressData value, $Res Function(CustomerAddressData) _then) = _$CustomerAddressDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "customerId") String customerId,@JsonKey(name: "address") String? address,@JsonKey(name: "salesPersonId") String? salesPersonId,@JsonKey(name: "latitude") String latitude,@JsonKey(name: "longitude") String longitude,@JsonKey(name: "deliveryName") String? deliveryName,@JsonKey(name: "postalAddress") String postalAddress,@JsonKey(name: "location") String location,@JsonKey(name: "isPrimary") bool isPrimary,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "companyCode") String companyCode,@JsonKey(name: "createAt") DateTime createAt,@JsonKey(name: "updatedAt") DateTime updatedAt
});




}
/// @nodoc
class _$CustomerAddressDataCopyWithImpl<$Res>
    implements $CustomerAddressDataCopyWith<$Res> {
  _$CustomerAddressDataCopyWithImpl(this._self, this._then);

  final CustomerAddressData _self;
  final $Res Function(CustomerAddressData) _then;

/// Create a copy of CustomerAddressData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? customerId = null,Object? address = freezed,Object? salesPersonId = freezed,Object? latitude = null,Object? longitude = null,Object? deliveryName = freezed,Object? postalAddress = null,Object? location = null,Object? isPrimary = null,Object? companyId = null,Object? companyCode = null,Object? createAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,salesPersonId: freezed == salesPersonId ? _self.salesPersonId : salesPersonId // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,deliveryName: freezed == deliveryName ? _self.deliveryName : deliveryName // ignore: cast_nullable_to_non_nullable
as String?,postalAddress: null == postalAddress ? _self.postalAddress : postalAddress // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerAddressData].
extension CustomerAddressDataPatterns on CustomerAddressData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerAddressData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerAddressData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerAddressData value)  $default,){
final _that = this;
switch (_that) {
case _CustomerAddressData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerAddressData value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerAddressData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "customerId")  String customerId, @JsonKey(name: "address")  String? address, @JsonKey(name: "salesPersonId")  String? salesPersonId, @JsonKey(name: "latitude")  String latitude, @JsonKey(name: "longitude")  String longitude, @JsonKey(name: "deliveryName")  String? deliveryName, @JsonKey(name: "postalAddress")  String postalAddress, @JsonKey(name: "location")  String location, @JsonKey(name: "isPrimary")  bool isPrimary, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerAddressData() when $default != null:
return $default(_that.id,_that.customerId,_that.address,_that.salesPersonId,_that.latitude,_that.longitude,_that.deliveryName,_that.postalAddress,_that.location,_that.isPrimary,_that.companyId,_that.companyCode,_that.createAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "customerId")  String customerId, @JsonKey(name: "address")  String? address, @JsonKey(name: "salesPersonId")  String? salesPersonId, @JsonKey(name: "latitude")  String latitude, @JsonKey(name: "longitude")  String longitude, @JsonKey(name: "deliveryName")  String? deliveryName, @JsonKey(name: "postalAddress")  String postalAddress, @JsonKey(name: "location")  String location, @JsonKey(name: "isPrimary")  bool isPrimary, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CustomerAddressData():
return $default(_that.id,_that.customerId,_that.address,_that.salesPersonId,_that.latitude,_that.longitude,_that.deliveryName,_that.postalAddress,_that.location,_that.isPrimary,_that.companyId,_that.companyCode,_that.createAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "customerId")  String customerId, @JsonKey(name: "address")  String? address, @JsonKey(name: "salesPersonId")  String? salesPersonId, @JsonKey(name: "latitude")  String latitude, @JsonKey(name: "longitude")  String longitude, @JsonKey(name: "deliveryName")  String? deliveryName, @JsonKey(name: "postalAddress")  String postalAddress, @JsonKey(name: "location")  String location, @JsonKey(name: "isPrimary")  bool isPrimary, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomerAddressData() when $default != null:
return $default(_that.id,_that.customerId,_that.address,_that.salesPersonId,_that.latitude,_that.longitude,_that.deliveryName,_that.postalAddress,_that.location,_that.isPrimary,_that.companyId,_that.companyCode,_that.createAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerAddressData implements CustomerAddressData {
  const _CustomerAddressData({@JsonKey(name: "id") required this.id, @JsonKey(name: "customerId") required this.customerId, @JsonKey(name: "address") this.address, @JsonKey(name: "salesPersonId") this.salesPersonId, @JsonKey(name: "latitude") required this.latitude, @JsonKey(name: "longitude") required this.longitude, @JsonKey(name: "deliveryName") this.deliveryName, @JsonKey(name: "postalAddress") required this.postalAddress, @JsonKey(name: "location") required this.location, @JsonKey(name: "isPrimary") required this.isPrimary, @JsonKey(name: "companyId") required this.companyId, @JsonKey(name: "companyCode") required this.companyCode, @JsonKey(name: "createAt") required this.createAt, @JsonKey(name: "updatedAt") required this.updatedAt});
  factory _CustomerAddressData.fromJson(Map<String, dynamic> json) => _$CustomerAddressDataFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "customerId") final  String customerId;
@override@JsonKey(name: "address") final  String? address;
@override@JsonKey(name: "salesPersonId") final  String? salesPersonId;
@override@JsonKey(name: "latitude") final  String latitude;
@override@JsonKey(name: "longitude") final  String longitude;
@override@JsonKey(name: "deliveryName") final  String? deliveryName;
@override@JsonKey(name: "postalAddress") final  String postalAddress;
@override@JsonKey(name: "location") final  String location;
@override@JsonKey(name: "isPrimary") final  bool isPrimary;
@override@JsonKey(name: "companyId") final  int companyId;
@override@JsonKey(name: "companyCode") final  String companyCode;
@override@JsonKey(name: "createAt") final  DateTime createAt;
@override@JsonKey(name: "updatedAt") final  DateTime updatedAt;

/// Create a copy of CustomerAddressData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerAddressDataCopyWith<_CustomerAddressData> get copyWith => __$CustomerAddressDataCopyWithImpl<_CustomerAddressData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerAddressDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerAddressData&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.address, address) || other.address == address)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.deliveryName, deliveryName) || other.deliveryName == deliveryName)&&(identical(other.postalAddress, postalAddress) || other.postalAddress == postalAddress)&&(identical(other.location, location) || other.location == location)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerId,address,salesPersonId,latitude,longitude,deliveryName,postalAddress,location,isPrimary,companyId,companyCode,createAt,updatedAt);

@override
String toString() {
  return 'CustomerAddressData(id: $id, customerId: $customerId, address: $address, salesPersonId: $salesPersonId, latitude: $latitude, longitude: $longitude, deliveryName: $deliveryName, postalAddress: $postalAddress, location: $location, isPrimary: $isPrimary, companyId: $companyId, companyCode: $companyCode, createAt: $createAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CustomerAddressDataCopyWith<$Res> implements $CustomerAddressDataCopyWith<$Res> {
  factory _$CustomerAddressDataCopyWith(_CustomerAddressData value, $Res Function(_CustomerAddressData) _then) = __$CustomerAddressDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "customerId") String customerId,@JsonKey(name: "address") String? address,@JsonKey(name: "salesPersonId") String? salesPersonId,@JsonKey(name: "latitude") String latitude,@JsonKey(name: "longitude") String longitude,@JsonKey(name: "deliveryName") String? deliveryName,@JsonKey(name: "postalAddress") String postalAddress,@JsonKey(name: "location") String location,@JsonKey(name: "isPrimary") bool isPrimary,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "companyCode") String companyCode,@JsonKey(name: "createAt") DateTime createAt,@JsonKey(name: "updatedAt") DateTime updatedAt
});




}
/// @nodoc
class __$CustomerAddressDataCopyWithImpl<$Res>
    implements _$CustomerAddressDataCopyWith<$Res> {
  __$CustomerAddressDataCopyWithImpl(this._self, this._then);

  final _CustomerAddressData _self;
  final $Res Function(_CustomerAddressData) _then;

/// Create a copy of CustomerAddressData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? customerId = null,Object? address = freezed,Object? salesPersonId = freezed,Object? latitude = null,Object? longitude = null,Object? deliveryName = freezed,Object? postalAddress = null,Object? location = null,Object? isPrimary = null,Object? companyId = null,Object? companyCode = null,Object? createAt = null,Object? updatedAt = null,}) {
  return _then(_CustomerAddressData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,salesPersonId: freezed == salesPersonId ? _self.salesPersonId : salesPersonId // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,deliveryName: freezed == deliveryName ? _self.deliveryName : deliveryName // ignore: cast_nullable_to_non_nullable
as String?,postalAddress: null == postalAddress ? _self.postalAddress : postalAddress // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
