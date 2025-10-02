// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "total") int get total;@JsonKey(name: "data") List<CustomerData> get data;
/// Create a copy of CustomerResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerResponseCopyWith<CustomerResponse> get copyWith => _$CustomerResponseCopyWithImpl<CustomerResponse>(this as CustomerResponse, _$identity);

  /// Serializes this CustomerResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,total,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CustomerResponse(status: $status, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class $CustomerResponseCopyWith<$Res>  {
  factory $CustomerResponseCopyWith(CustomerResponse value, $Res Function(CustomerResponse) _then) = _$CustomerResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "total") int total,@JsonKey(name: "data") List<CustomerData> data
});




}
/// @nodoc
class _$CustomerResponseCopyWithImpl<$Res>
    implements $CustomerResponseCopyWith<$Res> {
  _$CustomerResponseCopyWithImpl(this._self, this._then);

  final CustomerResponse _self;
  final $Res Function(CustomerResponse) _then;

/// Create a copy of CustomerResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? total = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CustomerData>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerResponse].
extension CustomerResponsePatterns on CustomerResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerResponse value)  $default,){
final _that = this;
switch (_that) {
case _CustomerResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<CustomerData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<CustomerData> data)  $default,) {final _that = this;
switch (_that) {
case _CustomerResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<CustomerData> data)?  $default,) {final _that = this;
switch (_that) {
case _CustomerResponse() when $default != null:
return $default(_that.status,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerResponse implements CustomerResponse {
  const _CustomerResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "total") required this.total, @JsonKey(name: "data") required final  List<CustomerData> data}): _data = data;
  factory _CustomerResponse.fromJson(Map<String, dynamic> json) => _$CustomerResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "total") final  int total;
 final  List<CustomerData> _data;
@override@JsonKey(name: "data") List<CustomerData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of CustomerResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerResponseCopyWith<_CustomerResponse> get copyWith => __$CustomerResponseCopyWithImpl<_CustomerResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,total,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'CustomerResponse(status: $status, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CustomerResponseCopyWith<$Res> implements $CustomerResponseCopyWith<$Res> {
  factory _$CustomerResponseCopyWith(_CustomerResponse value, $Res Function(_CustomerResponse) _then) = __$CustomerResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "total") int total,@JsonKey(name: "data") List<CustomerData> data
});




}
/// @nodoc
class __$CustomerResponseCopyWithImpl<$Res>
    implements _$CustomerResponseCopyWith<$Res> {
  __$CustomerResponseCopyWithImpl(this._self, this._then);

  final _CustomerResponse _self;
  final $Res Function(_CustomerResponse) _then;

/// Create a copy of CustomerResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? total = null,Object? data = null,}) {
  return _then(_CustomerResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CustomerData>,
  ));
}


}


/// @nodoc
mixin _$CustomerData {

@JsonKey(name: "id") int get id;@JsonKey(name: "customerId") String get customerId;@JsonKey(name: "customerName") String get customerName;@JsonKey(name: "address") String get address;@JsonKey(name: "salesPersonId") String get salesPersonId;@JsonKey(name: "salesPerson") String? get salesPerson;@JsonKey(name: "merchandiser") String? get merchandiser;@JsonKey(name: "countryId") String get countryId;@JsonKey(name: "phoneNumber") String? get phoneNumber;@JsonKey(name: "latitude") String get latitude;@JsonKey(name: "longitude") String get longitude;@JsonKey(name: "creditLimit")@StringToDoubleConverter() double? get creditLimit;@JsonKey(name: "currencyCode") String? get currencyCode;@JsonKey(name: "paymentTerm") String? get paymentTerm;@JsonKey(name: "priceGroup") String? get priceGroup;@JsonKey(name: "customreDimension") String? get customreDimension;@JsonKey(name: "status") int get status;@JsonKey(name: "companyId") int get companyId;@JsonKey(name: "companyCode") String get companyCode;@JsonKey(name: "createAt") DateTime get createAt;@JsonKey(name: "updatedAt") DateTime get updatedAt;
/// Create a copy of CustomerData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerDataCopyWith<CustomerData> get copyWith => _$CustomerDataCopyWithImpl<CustomerData>(this as CustomerData, _$identity);

  /// Serializes this CustomerData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerData&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.address, address) || other.address == address)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.salesPerson, salesPerson) || other.salesPerson == salesPerson)&&(identical(other.merchandiser, merchandiser) || other.merchandiser == merchandiser)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.paymentTerm, paymentTerm) || other.paymentTerm == paymentTerm)&&(identical(other.priceGroup, priceGroup) || other.priceGroup == priceGroup)&&(identical(other.customreDimension, customreDimension) || other.customreDimension == customreDimension)&&(identical(other.status, status) || other.status == status)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customerId,customerName,address,salesPersonId,salesPerson,merchandiser,countryId,phoneNumber,latitude,longitude,creditLimit,currencyCode,paymentTerm,priceGroup,customreDimension,status,companyId,companyCode,createAt,updatedAt]);

@override
String toString() {
  return 'CustomerData(id: $id, customerId: $customerId, customerName: $customerName, address: $address, salesPersonId: $salesPersonId, salesPerson: $salesPerson, merchandiser: $merchandiser, countryId: $countryId, phoneNumber: $phoneNumber, latitude: $latitude, longitude: $longitude, creditLimit: $creditLimit, currencyCode: $currencyCode, paymentTerm: $paymentTerm, priceGroup: $priceGroup, customreDimension: $customreDimension, status: $status, companyId: $companyId, companyCode: $companyCode, createAt: $createAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CustomerDataCopyWith<$Res>  {
  factory $CustomerDataCopyWith(CustomerData value, $Res Function(CustomerData) _then) = _$CustomerDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "customerId") String customerId,@JsonKey(name: "customerName") String customerName,@JsonKey(name: "address") String address,@JsonKey(name: "salesPersonId") String salesPersonId,@JsonKey(name: "salesPerson") String? salesPerson,@JsonKey(name: "merchandiser") String? merchandiser,@JsonKey(name: "countryId") String countryId,@JsonKey(name: "phoneNumber") String? phoneNumber,@JsonKey(name: "latitude") String latitude,@JsonKey(name: "longitude") String longitude,@JsonKey(name: "creditLimit")@StringToDoubleConverter() double? creditLimit,@JsonKey(name: "currencyCode") String? currencyCode,@JsonKey(name: "paymentTerm") String? paymentTerm,@JsonKey(name: "priceGroup") String? priceGroup,@JsonKey(name: "customreDimension") String? customreDimension,@JsonKey(name: "status") int status,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "companyCode") String companyCode,@JsonKey(name: "createAt") DateTime createAt,@JsonKey(name: "updatedAt") DateTime updatedAt
});




}
/// @nodoc
class _$CustomerDataCopyWithImpl<$Res>
    implements $CustomerDataCopyWith<$Res> {
  _$CustomerDataCopyWithImpl(this._self, this._then);

  final CustomerData _self;
  final $Res Function(CustomerData) _then;

/// Create a copy of CustomerData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? customerId = null,Object? customerName = null,Object? address = null,Object? salesPersonId = null,Object? salesPerson = freezed,Object? merchandiser = freezed,Object? countryId = null,Object? phoneNumber = freezed,Object? latitude = null,Object? longitude = null,Object? creditLimit = freezed,Object? currencyCode = freezed,Object? paymentTerm = freezed,Object? priceGroup = freezed,Object? customreDimension = freezed,Object? status = null,Object? companyId = null,Object? companyCode = null,Object? createAt = null,Object? updatedAt = null,}) {
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
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as double?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,paymentTerm: freezed == paymentTerm ? _self.paymentTerm : paymentTerm // ignore: cast_nullable_to_non_nullable
as String?,priceGroup: freezed == priceGroup ? _self.priceGroup : priceGroup // ignore: cast_nullable_to_non_nullable
as String?,customreDimension: freezed == customreDimension ? _self.customreDimension : customreDimension // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerData].
extension CustomerDataPatterns on CustomerData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerData value)  $default,){
final _that = this;
switch (_that) {
case _CustomerData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerData value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "customerId")  String customerId, @JsonKey(name: "customerName")  String customerName, @JsonKey(name: "address")  String address, @JsonKey(name: "salesPersonId")  String salesPersonId, @JsonKey(name: "salesPerson")  String? salesPerson, @JsonKey(name: "merchandiser")  String? merchandiser, @JsonKey(name: "countryId")  String countryId, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "latitude")  String latitude, @JsonKey(name: "longitude")  String longitude, @JsonKey(name: "creditLimit")@StringToDoubleConverter()  double? creditLimit, @JsonKey(name: "currencyCode")  String? currencyCode, @JsonKey(name: "paymentTerm")  String? paymentTerm, @JsonKey(name: "priceGroup")  String? priceGroup, @JsonKey(name: "customreDimension")  String? customreDimension, @JsonKey(name: "status")  int status, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerData() when $default != null:
return $default(_that.id,_that.customerId,_that.customerName,_that.address,_that.salesPersonId,_that.salesPerson,_that.merchandiser,_that.countryId,_that.phoneNumber,_that.latitude,_that.longitude,_that.creditLimit,_that.currencyCode,_that.paymentTerm,_that.priceGroup,_that.customreDimension,_that.status,_that.companyId,_that.companyCode,_that.createAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "customerId")  String customerId, @JsonKey(name: "customerName")  String customerName, @JsonKey(name: "address")  String address, @JsonKey(name: "salesPersonId")  String salesPersonId, @JsonKey(name: "salesPerson")  String? salesPerson, @JsonKey(name: "merchandiser")  String? merchandiser, @JsonKey(name: "countryId")  String countryId, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "latitude")  String latitude, @JsonKey(name: "longitude")  String longitude, @JsonKey(name: "creditLimit")@StringToDoubleConverter()  double? creditLimit, @JsonKey(name: "currencyCode")  String? currencyCode, @JsonKey(name: "paymentTerm")  String? paymentTerm, @JsonKey(name: "priceGroup")  String? priceGroup, @JsonKey(name: "customreDimension")  String? customreDimension, @JsonKey(name: "status")  int status, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CustomerData():
return $default(_that.id,_that.customerId,_that.customerName,_that.address,_that.salesPersonId,_that.salesPerson,_that.merchandiser,_that.countryId,_that.phoneNumber,_that.latitude,_that.longitude,_that.creditLimit,_that.currencyCode,_that.paymentTerm,_that.priceGroup,_that.customreDimension,_that.status,_that.companyId,_that.companyCode,_that.createAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "customerId")  String customerId, @JsonKey(name: "customerName")  String customerName, @JsonKey(name: "address")  String address, @JsonKey(name: "salesPersonId")  String salesPersonId, @JsonKey(name: "salesPerson")  String? salesPerson, @JsonKey(name: "merchandiser")  String? merchandiser, @JsonKey(name: "countryId")  String countryId, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "latitude")  String latitude, @JsonKey(name: "longitude")  String longitude, @JsonKey(name: "creditLimit")@StringToDoubleConverter()  double? creditLimit, @JsonKey(name: "currencyCode")  String? currencyCode, @JsonKey(name: "paymentTerm")  String? paymentTerm, @JsonKey(name: "priceGroup")  String? priceGroup, @JsonKey(name: "customreDimension")  String? customreDimension, @JsonKey(name: "status")  int status, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomerData() when $default != null:
return $default(_that.id,_that.customerId,_that.customerName,_that.address,_that.salesPersonId,_that.salesPerson,_that.merchandiser,_that.countryId,_that.phoneNumber,_that.latitude,_that.longitude,_that.creditLimit,_that.currencyCode,_that.paymentTerm,_that.priceGroup,_that.customreDimension,_that.status,_that.companyId,_that.companyCode,_that.createAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerData implements CustomerData {
  const _CustomerData({@JsonKey(name: "id") required this.id, @JsonKey(name: "customerId") required this.customerId, @JsonKey(name: "customerName") required this.customerName, @JsonKey(name: "address") required this.address, @JsonKey(name: "salesPersonId") required this.salesPersonId, @JsonKey(name: "salesPerson") this.salesPerson, @JsonKey(name: "merchandiser") this.merchandiser, @JsonKey(name: "countryId") required this.countryId, @JsonKey(name: "phoneNumber") this.phoneNumber, @JsonKey(name: "latitude") required this.latitude, @JsonKey(name: "longitude") required this.longitude, @JsonKey(name: "creditLimit")@StringToDoubleConverter() this.creditLimit, @JsonKey(name: "currencyCode") this.currencyCode, @JsonKey(name: "paymentTerm") this.paymentTerm, @JsonKey(name: "priceGroup") this.priceGroup, @JsonKey(name: "customreDimension") this.customreDimension, @JsonKey(name: "status") required this.status, @JsonKey(name: "companyId") required this.companyId, @JsonKey(name: "companyCode") required this.companyCode, @JsonKey(name: "createAt") required this.createAt, @JsonKey(name: "updatedAt") required this.updatedAt});
  factory _CustomerData.fromJson(Map<String, dynamic> json) => _$CustomerDataFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "customerId") final  String customerId;
@override@JsonKey(name: "customerName") final  String customerName;
@override@JsonKey(name: "address") final  String address;
@override@JsonKey(name: "salesPersonId") final  String salesPersonId;
@override@JsonKey(name: "salesPerson") final  String? salesPerson;
@override@JsonKey(name: "merchandiser") final  String? merchandiser;
@override@JsonKey(name: "countryId") final  String countryId;
@override@JsonKey(name: "phoneNumber") final  String? phoneNumber;
@override@JsonKey(name: "latitude") final  String latitude;
@override@JsonKey(name: "longitude") final  String longitude;
@override@JsonKey(name: "creditLimit")@StringToDoubleConverter() final  double? creditLimit;
@override@JsonKey(name: "currencyCode") final  String? currencyCode;
@override@JsonKey(name: "paymentTerm") final  String? paymentTerm;
@override@JsonKey(name: "priceGroup") final  String? priceGroup;
@override@JsonKey(name: "customreDimension") final  String? customreDimension;
@override@JsonKey(name: "status") final  int status;
@override@JsonKey(name: "companyId") final  int companyId;
@override@JsonKey(name: "companyCode") final  String companyCode;
@override@JsonKey(name: "createAt") final  DateTime createAt;
@override@JsonKey(name: "updatedAt") final  DateTime updatedAt;

/// Create a copy of CustomerData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerDataCopyWith<_CustomerData> get copyWith => __$CustomerDataCopyWithImpl<_CustomerData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerData&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.address, address) || other.address == address)&&(identical(other.salesPersonId, salesPersonId) || other.salesPersonId == salesPersonId)&&(identical(other.salesPerson, salesPerson) || other.salesPerson == salesPerson)&&(identical(other.merchandiser, merchandiser) || other.merchandiser == merchandiser)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.paymentTerm, paymentTerm) || other.paymentTerm == paymentTerm)&&(identical(other.priceGroup, priceGroup) || other.priceGroup == priceGroup)&&(identical(other.customreDimension, customreDimension) || other.customreDimension == customreDimension)&&(identical(other.status, status) || other.status == status)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customerId,customerName,address,salesPersonId,salesPerson,merchandiser,countryId,phoneNumber,latitude,longitude,creditLimit,currencyCode,paymentTerm,priceGroup,customreDimension,status,companyId,companyCode,createAt,updatedAt]);

@override
String toString() {
  return 'CustomerData(id: $id, customerId: $customerId, customerName: $customerName, address: $address, salesPersonId: $salesPersonId, salesPerson: $salesPerson, merchandiser: $merchandiser, countryId: $countryId, phoneNumber: $phoneNumber, latitude: $latitude, longitude: $longitude, creditLimit: $creditLimit, currencyCode: $currencyCode, paymentTerm: $paymentTerm, priceGroup: $priceGroup, customreDimension: $customreDimension, status: $status, companyId: $companyId, companyCode: $companyCode, createAt: $createAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CustomerDataCopyWith<$Res> implements $CustomerDataCopyWith<$Res> {
  factory _$CustomerDataCopyWith(_CustomerData value, $Res Function(_CustomerData) _then) = __$CustomerDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "customerId") String customerId,@JsonKey(name: "customerName") String customerName,@JsonKey(name: "address") String address,@JsonKey(name: "salesPersonId") String salesPersonId,@JsonKey(name: "salesPerson") String? salesPerson,@JsonKey(name: "merchandiser") String? merchandiser,@JsonKey(name: "countryId") String countryId,@JsonKey(name: "phoneNumber") String? phoneNumber,@JsonKey(name: "latitude") String latitude,@JsonKey(name: "longitude") String longitude,@JsonKey(name: "creditLimit")@StringToDoubleConverter() double? creditLimit,@JsonKey(name: "currencyCode") String? currencyCode,@JsonKey(name: "paymentTerm") String? paymentTerm,@JsonKey(name: "priceGroup") String? priceGroup,@JsonKey(name: "customreDimension") String? customreDimension,@JsonKey(name: "status") int status,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "companyCode") String companyCode,@JsonKey(name: "createAt") DateTime createAt,@JsonKey(name: "updatedAt") DateTime updatedAt
});




}
/// @nodoc
class __$CustomerDataCopyWithImpl<$Res>
    implements _$CustomerDataCopyWith<$Res> {
  __$CustomerDataCopyWithImpl(this._self, this._then);

  final _CustomerData _self;
  final $Res Function(_CustomerData) _then;

/// Create a copy of CustomerData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? customerId = null,Object? customerName = null,Object? address = null,Object? salesPersonId = null,Object? salesPerson = freezed,Object? merchandiser = freezed,Object? countryId = null,Object? phoneNumber = freezed,Object? latitude = null,Object? longitude = null,Object? creditLimit = freezed,Object? currencyCode = freezed,Object? paymentTerm = freezed,Object? priceGroup = freezed,Object? customreDimension = freezed,Object? status = null,Object? companyId = null,Object? companyCode = null,Object? createAt = null,Object? updatedAt = null,}) {
  return _then(_CustomerData(
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
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as double?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,paymentTerm: freezed == paymentTerm ? _self.paymentTerm : paymentTerm // ignore: cast_nullable_to_non_nullable
as String?,priceGroup: freezed == priceGroup ? _self.priceGroup : priceGroup // ignore: cast_nullable_to_non_nullable
as String?,customreDimension: freezed == customreDimension ? _self.customreDimension : customreDimension // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
