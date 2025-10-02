// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchandiser_customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MerchandiserCustomer {

 int get id; String get customerId; String get customerName; String get address; String get salesPersonId; String? get salesPerson; String? get merchandiser; String get countryId; String? get phoneNumber; double get latitude; double get longitude; double? get creditLimit; String? get currencyCode; String? get paymentTerm; String? get priceGroup; String get customreDimension; int get status; int get companyId; String get companyCode;
/// Create a copy of MerchandiserCustomer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchandiserCustomerCopyWith<MerchandiserCustomer> get copyWith => _$MerchandiserCustomerCopyWithImpl<MerchandiserCustomer>(this as MerchandiserCustomer, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchandiserCustomer&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.address, address) || other.address == address)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.salesPerson, salesPerson) || other.salesPerson == salesPerson)&&(identical(other.merchandiser, merchandiser) || other.merchandiser == merchandiser)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.paymentTerm, paymentTerm) || other.paymentTerm == paymentTerm)&&(identical(other.priceGroup, priceGroup) || other.priceGroup == priceGroup)&&(identical(other.customreDimension, customreDimension) || other.customreDimension == customreDimension)&&(identical(other.status, status) || other.status == status)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,customerId,customerName,address,salesPersonId,salesPerson,merchandiser,countryId,phoneNumber,latitude,longitude,creditLimit,currencyCode,paymentTerm,priceGroup,customreDimension,status,companyId,companyCode]);

@override
String toString() {
  return 'MerchandiserCustomer(id: $id, customerId: $customerId, customerName: $customerName, address: $address, salesPersonId: $salesPersonId, salesPerson: $salesPerson, merchandiser: $merchandiser, countryId: $countryId, phoneNumber: $phoneNumber, latitude: $latitude, longitude: $longitude, creditLimit: $creditLimit, currencyCode: $currencyCode, paymentTerm: $paymentTerm, priceGroup: $priceGroup, customreDimension: $customreDimension, status: $status, companyId: $companyId, companyCode: $companyCode)';
}


}

/// @nodoc
abstract mixin class $MerchandiserCustomerCopyWith<$Res>  {
  factory $MerchandiserCustomerCopyWith(MerchandiserCustomer value, $Res Function(MerchandiserCustomer) _then) = _$MerchandiserCustomerCopyWithImpl;
@useResult
$Res call({
 int id, String customerId, String customerName, String address, String salesPersonId, String? salesPerson, String? merchandiser, String countryId, String? phoneNumber, double latitude, double longitude, double? creditLimit, String? currencyCode, String? paymentTerm, String? priceGroup, String customreDimension, int status, int companyId, String companyCode
});




}
/// @nodoc
class _$MerchandiserCustomerCopyWithImpl<$Res>
    implements $MerchandiserCustomerCopyWith<$Res> {
  _$MerchandiserCustomerCopyWithImpl(this._self, this._then);

  final MerchandiserCustomer _self;
  final $Res Function(MerchandiserCustomer) _then;

/// Create a copy of MerchandiserCustomer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? customerId = null,Object? customerName = null,Object? address = null,Object? salesPersonId = null,Object? salesPerson = freezed,Object? merchandiser = freezed,Object? countryId = null,Object? phoneNumber = freezed,Object? latitude = null,Object? longitude = null,Object? creditLimit = freezed,Object? currencyCode = freezed,Object? paymentTerm = freezed,Object? priceGroup = freezed,Object? customreDimension = null,Object? status = null,Object? companyId = null,Object? companyCode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,salesPersonId: null == salesPersonId ? _self.salesPersonId : salesPersonId // ignore: cast_nullable_to_non_nullable
as String,salesPerson: freezed == salesPerson ? _self.salesPerson : salesPerson // ignore: cast_nullable_to_non_nullable
as String?,merchandiser: freezed == merchandiser ? _self.merchandiser : merchandiser // ignore: cast_nullable_to_non_nullable
as String?,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as double?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,paymentTerm: freezed == paymentTerm ? _self.paymentTerm : paymentTerm // ignore: cast_nullable_to_non_nullable
as String?,priceGroup: freezed == priceGroup ? _self.priceGroup : priceGroup // ignore: cast_nullable_to_non_nullable
as String?,customreDimension: null == customreDimension ? _self.customreDimension : customreDimension // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchandiserCustomer].
extension MerchandiserCustomerPatterns on MerchandiserCustomer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchandiserCustomer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchandiserCustomer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchandiserCustomer value)  $default,){
final _that = this;
switch (_that) {
case _MerchandiserCustomer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchandiserCustomer value)?  $default,){
final _that = this;
switch (_that) {
case _MerchandiserCustomer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String customerId,  String customerName,  String address,  String salesPersonId,  String? salesPerson,  String? merchandiser,  String countryId,  String? phoneNumber,  double latitude,  double longitude,  double? creditLimit,  String? currencyCode,  String? paymentTerm,  String? priceGroup,  String customreDimension,  int status,  int companyId,  String companyCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchandiserCustomer() when $default != null:
return $default(_that.id,_that.customerId,_that.customerName,_that.address,_that.salesPersonId,_that.salesPerson,_that.merchandiser,_that.countryId,_that.phoneNumber,_that.latitude,_that.longitude,_that.creditLimit,_that.currencyCode,_that.paymentTerm,_that.priceGroup,_that.customreDimension,_that.status,_that.companyId,_that.companyCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String customerId,  String customerName,  String address,  String salesPersonId,  String? salesPerson,  String? merchandiser,  String countryId,  String? phoneNumber,  double latitude,  double longitude,  double? creditLimit,  String? currencyCode,  String? paymentTerm,  String? priceGroup,  String customreDimension,  int status,  int companyId,  String companyCode)  $default,) {final _that = this;
switch (_that) {
case _MerchandiserCustomer():
return $default(_that.id,_that.customerId,_that.customerName,_that.address,_that.salesPersonId,_that.salesPerson,_that.merchandiser,_that.countryId,_that.phoneNumber,_that.latitude,_that.longitude,_that.creditLimit,_that.currencyCode,_that.paymentTerm,_that.priceGroup,_that.customreDimension,_that.status,_that.companyId,_that.companyCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String customerId,  String customerName,  String address,  String salesPersonId,  String? salesPerson,  String? merchandiser,  String countryId,  String? phoneNumber,  double latitude,  double longitude,  double? creditLimit,  String? currencyCode,  String? paymentTerm,  String? priceGroup,  String customreDimension,  int status,  int companyId,  String companyCode)?  $default,) {final _that = this;
switch (_that) {
case _MerchandiserCustomer() when $default != null:
return $default(_that.id,_that.customerId,_that.customerName,_that.address,_that.salesPersonId,_that.salesPerson,_that.merchandiser,_that.countryId,_that.phoneNumber,_that.latitude,_that.longitude,_that.creditLimit,_that.currencyCode,_that.paymentTerm,_that.priceGroup,_that.customreDimension,_that.status,_that.companyId,_that.companyCode);case _:
  return null;

}
}

}

/// @nodoc


class _MerchandiserCustomer implements MerchandiserCustomer {
  const _MerchandiserCustomer({required this.id, required this.customerId, required this.customerName, required this.address, required this.salesPersonId, this.salesPerson, this.merchandiser, required this.countryId, this.phoneNumber, required this.latitude, required this.longitude, this.creditLimit, this.currencyCode, this.paymentTerm, this.priceGroup, required this.customreDimension, required this.status, required this.companyId, required this.companyCode});
  

@override final  int id;
@override final  String customerId;
@override final  String customerName;
@override final  String address;
@override final  String salesPersonId;
@override final  String? salesPerson;
@override final  String? merchandiser;
@override final  String countryId;
@override final  String? phoneNumber;
@override final  double latitude;
@override final  double longitude;
@override final  double? creditLimit;
@override final  String? currencyCode;
@override final  String? paymentTerm;
@override final  String? priceGroup;
@override final  String customreDimension;
@override final  int status;
@override final  int companyId;
@override final  String companyCode;

/// Create a copy of MerchandiserCustomer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchandiserCustomerCopyWith<_MerchandiserCustomer> get copyWith => __$MerchandiserCustomerCopyWithImpl<_MerchandiserCustomer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchandiserCustomer&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.address, address) || other.address == address)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.salesPerson, salesPerson) || other.salesPerson == salesPerson)&&(identical(other.merchandiser, merchandiser) || other.merchandiser == merchandiser)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.paymentTerm, paymentTerm) || other.paymentTerm == paymentTerm)&&(identical(other.priceGroup, priceGroup) || other.priceGroup == priceGroup)&&(identical(other.customreDimension, customreDimension) || other.customreDimension == customreDimension)&&(identical(other.status, status) || other.status == status)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,customerId,customerName,address,salesPersonId,salesPerson,merchandiser,countryId,phoneNumber,latitude,longitude,creditLimit,currencyCode,paymentTerm,priceGroup,customreDimension,status,companyId,companyCode]);

@override
String toString() {
  return 'MerchandiserCustomer(id: $id, customerId: $customerId, customerName: $customerName, address: $address, salesPersonId: $salesPersonId, salesPerson: $salesPerson, merchandiser: $merchandiser, countryId: $countryId, phoneNumber: $phoneNumber, latitude: $latitude, longitude: $longitude, creditLimit: $creditLimit, currencyCode: $currencyCode, paymentTerm: $paymentTerm, priceGroup: $priceGroup, customreDimension: $customreDimension, status: $status, companyId: $companyId, companyCode: $companyCode)';
}


}

/// @nodoc
abstract mixin class _$MerchandiserCustomerCopyWith<$Res> implements $MerchandiserCustomerCopyWith<$Res> {
  factory _$MerchandiserCustomerCopyWith(_MerchandiserCustomer value, $Res Function(_MerchandiserCustomer) _then) = __$MerchandiserCustomerCopyWithImpl;
@override @useResult
$Res call({
 int id, String customerId, String customerName, String address, String salesPersonId, String? salesPerson, String? merchandiser, String countryId, String? phoneNumber, double latitude, double longitude, double? creditLimit, String? currencyCode, String? paymentTerm, String? priceGroup, String customreDimension, int status, int companyId, String companyCode
});




}
/// @nodoc
class __$MerchandiserCustomerCopyWithImpl<$Res>
    implements _$MerchandiserCustomerCopyWith<$Res> {
  __$MerchandiserCustomerCopyWithImpl(this._self, this._then);

  final _MerchandiserCustomer _self;
  final $Res Function(_MerchandiserCustomer) _then;

/// Create a copy of MerchandiserCustomer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? customerId = null,Object? customerName = null,Object? address = null,Object? salesPersonId = null,Object? salesPerson = freezed,Object? merchandiser = freezed,Object? countryId = null,Object? phoneNumber = freezed,Object? latitude = null,Object? longitude = null,Object? creditLimit = freezed,Object? currencyCode = freezed,Object? paymentTerm = freezed,Object? priceGroup = freezed,Object? customreDimension = null,Object? status = null,Object? companyId = null,Object? companyCode = null,}) {
  return _then(_MerchandiserCustomer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,salesPersonId: null == salesPersonId ? _self.salesPersonId : salesPersonId // ignore: cast_nullable_to_non_nullable
as String,salesPerson: freezed == salesPerson ? _self.salesPerson : salesPerson // ignore: cast_nullable_to_non_nullable
as String?,merchandiser: freezed == merchandiser ? _self.merchandiser : merchandiser // ignore: cast_nullable_to_non_nullable
as String?,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as double?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,paymentTerm: freezed == paymentTerm ? _self.paymentTerm : paymentTerm // ignore: cast_nullable_to_non_nullable
as String?,priceGroup: freezed == priceGroup ? _self.priceGroup : priceGroup // ignore: cast_nullable_to_non_nullable
as String?,customreDimension: null == customreDimension ? _self.customreDimension : customreDimension // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
