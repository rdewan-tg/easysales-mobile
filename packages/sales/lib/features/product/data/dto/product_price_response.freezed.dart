// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_price_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductPriceResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "total") int get total;@JsonKey(name: "data") List<ProductPriceData> get data;
/// Create a copy of ProductPriceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPriceResponseCopyWith<ProductPriceResponse> get copyWith => _$ProductPriceResponseCopyWithImpl<ProductPriceResponse>(this as ProductPriceResponse, _$identity);

  /// Serializes this ProductPriceResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPriceResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,total,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ProductPriceResponse(status: $status, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class $ProductPriceResponseCopyWith<$Res>  {
  factory $ProductPriceResponseCopyWith(ProductPriceResponse value, $Res Function(ProductPriceResponse) _then) = _$ProductPriceResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "total") int total,@JsonKey(name: "data") List<ProductPriceData> data
});




}
/// @nodoc
class _$ProductPriceResponseCopyWithImpl<$Res>
    implements $ProductPriceResponseCopyWith<$Res> {
  _$ProductPriceResponseCopyWithImpl(this._self, this._then);

  final ProductPriceResponse _self;
  final $Res Function(ProductPriceResponse) _then;

/// Create a copy of ProductPriceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? total = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ProductPriceData>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductPriceResponse].
extension ProductPriceResponsePatterns on ProductPriceResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductPriceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductPriceResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductPriceResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductPriceResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductPriceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductPriceResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<ProductPriceData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductPriceResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<ProductPriceData> data)  $default,) {final _that = this;
switch (_that) {
case _ProductPriceResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<ProductPriceData> data)?  $default,) {final _that = this;
switch (_that) {
case _ProductPriceResponse() when $default != null:
return $default(_that.status,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductPriceResponse implements ProductPriceResponse {
  const _ProductPriceResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "total") required this.total, @JsonKey(name: "data") required final  List<ProductPriceData> data}): _data = data;
  factory _ProductPriceResponse.fromJson(Map<String, dynamic> json) => _$ProductPriceResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "total") final  int total;
 final  List<ProductPriceData> _data;
@override@JsonKey(name: "data") List<ProductPriceData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ProductPriceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPriceResponseCopyWith<_ProductPriceResponse> get copyWith => __$ProductPriceResponseCopyWithImpl<_ProductPriceResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductPriceResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPriceResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,total,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ProductPriceResponse(status: $status, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProductPriceResponseCopyWith<$Res> implements $ProductPriceResponseCopyWith<$Res> {
  factory _$ProductPriceResponseCopyWith(_ProductPriceResponse value, $Res Function(_ProductPriceResponse) _then) = __$ProductPriceResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "total") int total,@JsonKey(name: "data") List<ProductPriceData> data
});




}
/// @nodoc
class __$ProductPriceResponseCopyWithImpl<$Res>
    implements _$ProductPriceResponseCopyWith<$Res> {
  __$ProductPriceResponseCopyWithImpl(this._self, this._then);

  final _ProductPriceResponse _self;
  final $Res Function(_ProductPriceResponse) _then;

/// Create a copy of ProductPriceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? total = null,Object? data = null,}) {
  return _then(_ProductPriceResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductPriceData>,
  ));
}


}


/// @nodoc
mixin _$ProductPriceData {

@JsonKey(name: "id") int get id;@JsonKey(name: "productId") String get productId;@JsonKey(name: "itemId") String get itemId;@JsonKey(name: "packSize") String? get packSize;@JsonKey(name: "fromDate") DateTime get fromDate;@JsonKey(name: "toDate") DateTime get toDate;@JsonKey(name: "unitPrice") String get unitPrice;@JsonKey(name: "currencyCode") String get currencyCode;@JsonKey(name: "salesUnit") String get salesUnit;@JsonKey(name: "priceGroup") String get priceGroup;@JsonKey(name: "recId") String get recId;@JsonKey(name: "companyId") int get companyId;@JsonKey(name: "companyCode") String get companyCode;@JsonKey(name: "createAt") DateTime get createAt;@JsonKey(name: "updatedAt") DateTime get updatedAt;
/// Create a copy of ProductPriceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPriceDataCopyWith<ProductPriceData> get copyWith => _$ProductPriceDataCopyWithImpl<ProductPriceData>(this as ProductPriceData, _$identity);

  /// Serializes this ProductPriceData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPriceData&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.packSize, packSize) || other.packSize == packSize)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.salesUnit, salesUnit) || other.salesUnit == salesUnit)&&(identical(other.priceGroup, priceGroup) || other.priceGroup == priceGroup)&&(identical(other.recId, recId) || other.recId == recId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,itemId,packSize,fromDate,toDate,unitPrice,currencyCode,salesUnit,priceGroup,recId,companyId,companyCode,createAt,updatedAt);

@override
String toString() {
  return 'ProductPriceData(id: $id, productId: $productId, itemId: $itemId, packSize: $packSize, fromDate: $fromDate, toDate: $toDate, unitPrice: $unitPrice, currencyCode: $currencyCode, salesUnit: $salesUnit, priceGroup: $priceGroup, recId: $recId, companyId: $companyId, companyCode: $companyCode, createAt: $createAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProductPriceDataCopyWith<$Res>  {
  factory $ProductPriceDataCopyWith(ProductPriceData value, $Res Function(ProductPriceData) _then) = _$ProductPriceDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "productId") String productId,@JsonKey(name: "itemId") String itemId,@JsonKey(name: "packSize") String? packSize,@JsonKey(name: "fromDate") DateTime fromDate,@JsonKey(name: "toDate") DateTime toDate,@JsonKey(name: "unitPrice") String unitPrice,@JsonKey(name: "currencyCode") String currencyCode,@JsonKey(name: "salesUnit") String salesUnit,@JsonKey(name: "priceGroup") String priceGroup,@JsonKey(name: "recId") String recId,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "companyCode") String companyCode,@JsonKey(name: "createAt") DateTime createAt,@JsonKey(name: "updatedAt") DateTime updatedAt
});




}
/// @nodoc
class _$ProductPriceDataCopyWithImpl<$Res>
    implements $ProductPriceDataCopyWith<$Res> {
  _$ProductPriceDataCopyWithImpl(this._self, this._then);

  final ProductPriceData _self;
  final $Res Function(ProductPriceData) _then;

/// Create a copy of ProductPriceData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? itemId = null,Object? packSize = freezed,Object? fromDate = null,Object? toDate = null,Object? unitPrice = null,Object? currencyCode = null,Object? salesUnit = null,Object? priceGroup = null,Object? recId = null,Object? companyId = null,Object? companyCode = null,Object? createAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,packSize: freezed == packSize ? _self.packSize : packSize // ignore: cast_nullable_to_non_nullable
as String?,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,salesUnit: null == salesUnit ? _self.salesUnit : salesUnit // ignore: cast_nullable_to_non_nullable
as String,priceGroup: null == priceGroup ? _self.priceGroup : priceGroup // ignore: cast_nullable_to_non_nullable
as String,recId: null == recId ? _self.recId : recId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductPriceData].
extension ProductPriceDataPatterns on ProductPriceData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductPriceData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductPriceData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductPriceData value)  $default,){
final _that = this;
switch (_that) {
case _ProductPriceData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductPriceData value)?  $default,){
final _that = this;
switch (_that) {
case _ProductPriceData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "productId")  String productId, @JsonKey(name: "itemId")  String itemId, @JsonKey(name: "packSize")  String? packSize, @JsonKey(name: "fromDate")  DateTime fromDate, @JsonKey(name: "toDate")  DateTime toDate, @JsonKey(name: "unitPrice")  String unitPrice, @JsonKey(name: "currencyCode")  String currencyCode, @JsonKey(name: "salesUnit")  String salesUnit, @JsonKey(name: "priceGroup")  String priceGroup, @JsonKey(name: "recId")  String recId, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductPriceData() when $default != null:
return $default(_that.id,_that.productId,_that.itemId,_that.packSize,_that.fromDate,_that.toDate,_that.unitPrice,_that.currencyCode,_that.salesUnit,_that.priceGroup,_that.recId,_that.companyId,_that.companyCode,_that.createAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "productId")  String productId, @JsonKey(name: "itemId")  String itemId, @JsonKey(name: "packSize")  String? packSize, @JsonKey(name: "fromDate")  DateTime fromDate, @JsonKey(name: "toDate")  DateTime toDate, @JsonKey(name: "unitPrice")  String unitPrice, @JsonKey(name: "currencyCode")  String currencyCode, @JsonKey(name: "salesUnit")  String salesUnit, @JsonKey(name: "priceGroup")  String priceGroup, @JsonKey(name: "recId")  String recId, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProductPriceData():
return $default(_that.id,_that.productId,_that.itemId,_that.packSize,_that.fromDate,_that.toDate,_that.unitPrice,_that.currencyCode,_that.salesUnit,_that.priceGroup,_that.recId,_that.companyId,_that.companyCode,_that.createAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "productId")  String productId, @JsonKey(name: "itemId")  String itemId, @JsonKey(name: "packSize")  String? packSize, @JsonKey(name: "fromDate")  DateTime fromDate, @JsonKey(name: "toDate")  DateTime toDate, @JsonKey(name: "unitPrice")  String unitPrice, @JsonKey(name: "currencyCode")  String currencyCode, @JsonKey(name: "salesUnit")  String salesUnit, @JsonKey(name: "priceGroup")  String priceGroup, @JsonKey(name: "recId")  String recId, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProductPriceData() when $default != null:
return $default(_that.id,_that.productId,_that.itemId,_that.packSize,_that.fromDate,_that.toDate,_that.unitPrice,_that.currencyCode,_that.salesUnit,_that.priceGroup,_that.recId,_that.companyId,_that.companyCode,_that.createAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductPriceData implements ProductPriceData {
  const _ProductPriceData({@JsonKey(name: "id") required this.id, @JsonKey(name: "productId") required this.productId, @JsonKey(name: "itemId") required this.itemId, @JsonKey(name: "packSize") this.packSize, @JsonKey(name: "fromDate") required this.fromDate, @JsonKey(name: "toDate") required this.toDate, @JsonKey(name: "unitPrice") required this.unitPrice, @JsonKey(name: "currencyCode") required this.currencyCode, @JsonKey(name: "salesUnit") required this.salesUnit, @JsonKey(name: "priceGroup") required this.priceGroup, @JsonKey(name: "recId") required this.recId, @JsonKey(name: "companyId") required this.companyId, @JsonKey(name: "companyCode") required this.companyCode, @JsonKey(name: "createAt") required this.createAt, @JsonKey(name: "updatedAt") required this.updatedAt});
  factory _ProductPriceData.fromJson(Map<String, dynamic> json) => _$ProductPriceDataFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "productId") final  String productId;
@override@JsonKey(name: "itemId") final  String itemId;
@override@JsonKey(name: "packSize") final  String? packSize;
@override@JsonKey(name: "fromDate") final  DateTime fromDate;
@override@JsonKey(name: "toDate") final  DateTime toDate;
@override@JsonKey(name: "unitPrice") final  String unitPrice;
@override@JsonKey(name: "currencyCode") final  String currencyCode;
@override@JsonKey(name: "salesUnit") final  String salesUnit;
@override@JsonKey(name: "priceGroup") final  String priceGroup;
@override@JsonKey(name: "recId") final  String recId;
@override@JsonKey(name: "companyId") final  int companyId;
@override@JsonKey(name: "companyCode") final  String companyCode;
@override@JsonKey(name: "createAt") final  DateTime createAt;
@override@JsonKey(name: "updatedAt") final  DateTime updatedAt;

/// Create a copy of ProductPriceData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPriceDataCopyWith<_ProductPriceData> get copyWith => __$ProductPriceDataCopyWithImpl<_ProductPriceData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductPriceDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPriceData&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.packSize, packSize) || other.packSize == packSize)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.salesUnit, salesUnit) || other.salesUnit == salesUnit)&&(identical(other.priceGroup, priceGroup) || other.priceGroup == priceGroup)&&(identical(other.recId, recId) || other.recId == recId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,itemId,packSize,fromDate,toDate,unitPrice,currencyCode,salesUnit,priceGroup,recId,companyId,companyCode,createAt,updatedAt);

@override
String toString() {
  return 'ProductPriceData(id: $id, productId: $productId, itemId: $itemId, packSize: $packSize, fromDate: $fromDate, toDate: $toDate, unitPrice: $unitPrice, currencyCode: $currencyCode, salesUnit: $salesUnit, priceGroup: $priceGroup, recId: $recId, companyId: $companyId, companyCode: $companyCode, createAt: $createAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProductPriceDataCopyWith<$Res> implements $ProductPriceDataCopyWith<$Res> {
  factory _$ProductPriceDataCopyWith(_ProductPriceData value, $Res Function(_ProductPriceData) _then) = __$ProductPriceDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "productId") String productId,@JsonKey(name: "itemId") String itemId,@JsonKey(name: "packSize") String? packSize,@JsonKey(name: "fromDate") DateTime fromDate,@JsonKey(name: "toDate") DateTime toDate,@JsonKey(name: "unitPrice") String unitPrice,@JsonKey(name: "currencyCode") String currencyCode,@JsonKey(name: "salesUnit") String salesUnit,@JsonKey(name: "priceGroup") String priceGroup,@JsonKey(name: "recId") String recId,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "companyCode") String companyCode,@JsonKey(name: "createAt") DateTime createAt,@JsonKey(name: "updatedAt") DateTime updatedAt
});




}
/// @nodoc
class __$ProductPriceDataCopyWithImpl<$Res>
    implements _$ProductPriceDataCopyWith<$Res> {
  __$ProductPriceDataCopyWithImpl(this._self, this._then);

  final _ProductPriceData _self;
  final $Res Function(_ProductPriceData) _then;

/// Create a copy of ProductPriceData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? itemId = null,Object? packSize = freezed,Object? fromDate = null,Object? toDate = null,Object? unitPrice = null,Object? currencyCode = null,Object? salesUnit = null,Object? priceGroup = null,Object? recId = null,Object? companyId = null,Object? companyCode = null,Object? createAt = null,Object? updatedAt = null,}) {
  return _then(_ProductPriceData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,packSize: freezed == packSize ? _self.packSize : packSize // ignore: cast_nullable_to_non_nullable
as String?,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,salesUnit: null == salesUnit ? _self.salesUnit : salesUnit // ignore: cast_nullable_to_non_nullable
as String,priceGroup: null == priceGroup ? _self.priceGroup : priceGroup // ignore: cast_nullable_to_non_nullable
as String,recId: null == recId ? _self.recId : recId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
