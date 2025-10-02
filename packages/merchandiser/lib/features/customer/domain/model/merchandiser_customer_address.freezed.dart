// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchandiser_customer_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MerchandiserCustomerAddress {

 int get id; String get customerId; String? get deliveryName; String? get address; String? get salesPersonId; double get latitude; double get longitude; BigInt? get postalAddress; BigInt? get location; bool get isPrimary; int get companyId; String get companyCode;
/// Create a copy of MerchandiserCustomerAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchandiserCustomerAddressCopyWith<MerchandiserCustomerAddress> get copyWith => _$MerchandiserCustomerAddressCopyWithImpl<MerchandiserCustomerAddress>(this as MerchandiserCustomerAddress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchandiserCustomerAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.deliveryName, deliveryName) || other.deliveryName == deliveryName)&&(identical(other.address, address) || other.address == address)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.postalAddress, postalAddress) || other.postalAddress == postalAddress)&&(identical(other.location, location) || other.location == location)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode));
}


@override
int get hashCode => Object.hash(runtimeType,id,customerId,deliveryName,address,salesPersonId,latitude,longitude,postalAddress,location,isPrimary,companyId,companyCode);

@override
String toString() {
  return 'MerchandiserCustomerAddress(id: $id, customerId: $customerId, deliveryName: $deliveryName, address: $address, salesPersonId: $salesPersonId, latitude: $latitude, longitude: $longitude, postalAddress: $postalAddress, location: $location, isPrimary: $isPrimary, companyId: $companyId, companyCode: $companyCode)';
}


}

/// @nodoc
abstract mixin class $MerchandiserCustomerAddressCopyWith<$Res>  {
  factory $MerchandiserCustomerAddressCopyWith(MerchandiserCustomerAddress value, $Res Function(MerchandiserCustomerAddress) _then) = _$MerchandiserCustomerAddressCopyWithImpl;
@useResult
$Res call({
 int id, String customerId, String? deliveryName, String? address, String? salesPersonId, double latitude, double longitude, BigInt? postalAddress, BigInt? location, bool isPrimary, int companyId, String companyCode
});




}
/// @nodoc
class _$MerchandiserCustomerAddressCopyWithImpl<$Res>
    implements $MerchandiserCustomerAddressCopyWith<$Res> {
  _$MerchandiserCustomerAddressCopyWithImpl(this._self, this._then);

  final MerchandiserCustomerAddress _self;
  final $Res Function(MerchandiserCustomerAddress) _then;

/// Create a copy of MerchandiserCustomerAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? customerId = null,Object? deliveryName = freezed,Object? address = freezed,Object? salesPersonId = freezed,Object? latitude = null,Object? longitude = null,Object? postalAddress = freezed,Object? location = freezed,Object? isPrimary = null,Object? companyId = null,Object? companyCode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,deliveryName: freezed == deliveryName ? _self.deliveryName : deliveryName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,salesPersonId: freezed == salesPersonId ? _self.salesPersonId : salesPersonId // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,postalAddress: freezed == postalAddress ? _self.postalAddress : postalAddress // ignore: cast_nullable_to_non_nullable
as BigInt?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as BigInt?,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchandiserCustomerAddress].
extension MerchandiserCustomerAddressPatterns on MerchandiserCustomerAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchandiserCustomerAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchandiserCustomerAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchandiserCustomerAddress value)  $default,){
final _that = this;
switch (_that) {
case _MerchandiserCustomerAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchandiserCustomerAddress value)?  $default,){
final _that = this;
switch (_that) {
case _MerchandiserCustomerAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String customerId,  String? deliveryName,  String? address,  String? salesPersonId,  double latitude,  double longitude,  BigInt? postalAddress,  BigInt? location,  bool isPrimary,  int companyId,  String companyCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchandiserCustomerAddress() when $default != null:
return $default(_that.id,_that.customerId,_that.deliveryName,_that.address,_that.salesPersonId,_that.latitude,_that.longitude,_that.postalAddress,_that.location,_that.isPrimary,_that.companyId,_that.companyCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String customerId,  String? deliveryName,  String? address,  String? salesPersonId,  double latitude,  double longitude,  BigInt? postalAddress,  BigInt? location,  bool isPrimary,  int companyId,  String companyCode)  $default,) {final _that = this;
switch (_that) {
case _MerchandiserCustomerAddress():
return $default(_that.id,_that.customerId,_that.deliveryName,_that.address,_that.salesPersonId,_that.latitude,_that.longitude,_that.postalAddress,_that.location,_that.isPrimary,_that.companyId,_that.companyCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String customerId,  String? deliveryName,  String? address,  String? salesPersonId,  double latitude,  double longitude,  BigInt? postalAddress,  BigInt? location,  bool isPrimary,  int companyId,  String companyCode)?  $default,) {final _that = this;
switch (_that) {
case _MerchandiserCustomerAddress() when $default != null:
return $default(_that.id,_that.customerId,_that.deliveryName,_that.address,_that.salesPersonId,_that.latitude,_that.longitude,_that.postalAddress,_that.location,_that.isPrimary,_that.companyId,_that.companyCode);case _:
  return null;

}
}

}

/// @nodoc


class _MerchandiserCustomerAddress implements MerchandiserCustomerAddress {
   _MerchandiserCustomerAddress({required this.id, required this.customerId, this.deliveryName, this.address, this.salesPersonId, this.latitude = 0.0, this.longitude = 0.0, this.postalAddress, this.location, this.isPrimary = false, required this.companyId, required this.companyCode});
  

@override final  int id;
@override final  String customerId;
@override final  String? deliveryName;
@override final  String? address;
@override final  String? salesPersonId;
@override@JsonKey() final  double latitude;
@override@JsonKey() final  double longitude;
@override final  BigInt? postalAddress;
@override final  BigInt? location;
@override@JsonKey() final  bool isPrimary;
@override final  int companyId;
@override final  String companyCode;

/// Create a copy of MerchandiserCustomerAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchandiserCustomerAddressCopyWith<_MerchandiserCustomerAddress> get copyWith => __$MerchandiserCustomerAddressCopyWithImpl<_MerchandiserCustomerAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchandiserCustomerAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.deliveryName, deliveryName) || other.deliveryName == deliveryName)&&(identical(other.address, address) || other.address == address)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.postalAddress, postalAddress) || other.postalAddress == postalAddress)&&(identical(other.location, location) || other.location == location)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode));
}


@override
int get hashCode => Object.hash(runtimeType,id,customerId,deliveryName,address,salesPersonId,latitude,longitude,postalAddress,location,isPrimary,companyId,companyCode);

@override
String toString() {
  return 'MerchandiserCustomerAddress(id: $id, customerId: $customerId, deliveryName: $deliveryName, address: $address, salesPersonId: $salesPersonId, latitude: $latitude, longitude: $longitude, postalAddress: $postalAddress, location: $location, isPrimary: $isPrimary, companyId: $companyId, companyCode: $companyCode)';
}


}

/// @nodoc
abstract mixin class _$MerchandiserCustomerAddressCopyWith<$Res> implements $MerchandiserCustomerAddressCopyWith<$Res> {
  factory _$MerchandiserCustomerAddressCopyWith(_MerchandiserCustomerAddress value, $Res Function(_MerchandiserCustomerAddress) _then) = __$MerchandiserCustomerAddressCopyWithImpl;
@override @useResult
$Res call({
 int id, String customerId, String? deliveryName, String? address, String? salesPersonId, double latitude, double longitude, BigInt? postalAddress, BigInt? location, bool isPrimary, int companyId, String companyCode
});




}
/// @nodoc
class __$MerchandiserCustomerAddressCopyWithImpl<$Res>
    implements _$MerchandiserCustomerAddressCopyWith<$Res> {
  __$MerchandiserCustomerAddressCopyWithImpl(this._self, this._then);

  final _MerchandiserCustomerAddress _self;
  final $Res Function(_MerchandiserCustomerAddress) _then;

/// Create a copy of MerchandiserCustomerAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? customerId = null,Object? deliveryName = freezed,Object? address = freezed,Object? salesPersonId = freezed,Object? latitude = null,Object? longitude = null,Object? postalAddress = freezed,Object? location = freezed,Object? isPrimary = null,Object? companyId = null,Object? companyCode = null,}) {
  return _then(_MerchandiserCustomerAddress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,deliveryName: freezed == deliveryName ? _self.deliveryName : deliveryName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,salesPersonId: freezed == salesPersonId ? _self.salesPersonId : salesPersonId // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,postalAddress: freezed == postalAddress ? _self.postalAddress : postalAddress // ignore: cast_nullable_to_non_nullable
as BigInt?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as BigInt?,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
