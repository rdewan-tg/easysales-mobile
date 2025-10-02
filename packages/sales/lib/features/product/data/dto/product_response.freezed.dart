// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "total") int get total;@JsonKey(name: "data") List<ProductData> get data;
/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductResponseCopyWith<ProductResponse> get copyWith => _$ProductResponseCopyWithImpl<ProductResponse>(this as ProductResponse, _$identity);

  /// Serializes this ProductResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,total,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ProductResponse(status: $status, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class $ProductResponseCopyWith<$Res>  {
  factory $ProductResponseCopyWith(ProductResponse value, $Res Function(ProductResponse) _then) = _$ProductResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "total") int total,@JsonKey(name: "data") List<ProductData> data
});




}
/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._self, this._then);

  final ProductResponse _self;
  final $Res Function(ProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? total = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ProductData>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductResponse].
extension ProductResponsePatterns on ProductResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<ProductData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<ProductData> data)  $default,) {final _that = this;
switch (_that) {
case _ProductResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "total")  int total, @JsonKey(name: "data")  List<ProductData> data)?  $default,) {final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
return $default(_that.status,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductResponse implements ProductResponse {
  const _ProductResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "total") required this.total, @JsonKey(name: "data") required final  List<ProductData> data}): _data = data;
  factory _ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "total") final  int total;
 final  List<ProductData> _data;
@override@JsonKey(name: "data") List<ProductData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductResponseCopyWith<_ProductResponse> get copyWith => __$ProductResponseCopyWithImpl<_ProductResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,total,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ProductResponse(status: $status, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProductResponseCopyWith<$Res> implements $ProductResponseCopyWith<$Res> {
  factory _$ProductResponseCopyWith(_ProductResponse value, $Res Function(_ProductResponse) _then) = __$ProductResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "total") int total,@JsonKey(name: "data") List<ProductData> data
});




}
/// @nodoc
class __$ProductResponseCopyWithImpl<$Res>
    implements _$ProductResponseCopyWith<$Res> {
  __$ProductResponseCopyWithImpl(this._self, this._then);

  final _ProductResponse _self;
  final $Res Function(_ProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? total = null,Object? data = null,}) {
  return _then(_ProductResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductData>,
  ));
}


}


/// @nodoc
mixin _$ProductData {

@JsonKey(name: "id") int get id;@JsonKey(name: "productId") String get productId;@JsonKey(name: "itemId") String get itemId;@JsonKey(name: "productName") String get productName;@JsonKey(name: "description") String get description;@JsonKey(name: "category") String get category;@JsonKey(name: "barcode") String get barcode;@JsonKey(name: "itemGroup") String get itemGroup;@JsonKey(name: "packSize") String? get packSize;@JsonKey(name: "salesUnit") String get salesUnit;@JsonKey(name: "unitPrice") String get unitPrice;@JsonKey(name: "image") String get image;@JsonKey(name: "itemDiscountGroup") String get itemDiscountGroup;@JsonKey(name: "itemFOCGroup") String get itemFocGroup;@JsonKey(name: "inventDimId") String get inventDimId;@JsonKey(name: "status") String get status;@JsonKey(name: "companyCode") String get companyCode;@JsonKey(name: "companyId") int get companyId;@JsonKey(name: "createAt") DateTime get createAt;@JsonKey(name: "updatedAt") DateTime get updatedAt;
/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDataCopyWith<ProductData> get copyWith => _$ProductDataCopyWithImpl<ProductData>(this as ProductData, _$identity);

  /// Serializes this ProductData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductData&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.itemGroup, itemGroup) || other.itemGroup == itemGroup)&&(identical(other.packSize, packSize) || other.packSize == packSize)&&(identical(other.salesUnit, salesUnit) || other.salesUnit == salesUnit)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.image, image) || other.image == image)&&(identical(other.itemDiscountGroup, itemDiscountGroup) || other.itemDiscountGroup == itemDiscountGroup)&&(identical(other.itemFocGroup, itemFocGroup) || other.itemFocGroup == itemFocGroup)&&(identical(other.inventDimId, inventDimId) || other.inventDimId == inventDimId)&&(identical(other.status, status) || other.status == status)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,productId,itemId,productName,description,category,barcode,itemGroup,packSize,salesUnit,unitPrice,image,itemDiscountGroup,itemFocGroup,inventDimId,status,companyCode,companyId,createAt,updatedAt]);

@override
String toString() {
  return 'ProductData(id: $id, productId: $productId, itemId: $itemId, productName: $productName, description: $description, category: $category, barcode: $barcode, itemGroup: $itemGroup, packSize: $packSize, salesUnit: $salesUnit, unitPrice: $unitPrice, image: $image, itemDiscountGroup: $itemDiscountGroup, itemFocGroup: $itemFocGroup, inventDimId: $inventDimId, status: $status, companyCode: $companyCode, companyId: $companyId, createAt: $createAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProductDataCopyWith<$Res>  {
  factory $ProductDataCopyWith(ProductData value, $Res Function(ProductData) _then) = _$ProductDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "productId") String productId,@JsonKey(name: "itemId") String itemId,@JsonKey(name: "productName") String productName,@JsonKey(name: "description") String description,@JsonKey(name: "category") String category,@JsonKey(name: "barcode") String barcode,@JsonKey(name: "itemGroup") String itemGroup,@JsonKey(name: "packSize") String? packSize,@JsonKey(name: "salesUnit") String salesUnit,@JsonKey(name: "unitPrice") String unitPrice,@JsonKey(name: "image") String image,@JsonKey(name: "itemDiscountGroup") String itemDiscountGroup,@JsonKey(name: "itemFOCGroup") String itemFocGroup,@JsonKey(name: "inventDimId") String inventDimId,@JsonKey(name: "status") String status,@JsonKey(name: "companyCode") String companyCode,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "createAt") DateTime createAt,@JsonKey(name: "updatedAt") DateTime updatedAt
});




}
/// @nodoc
class _$ProductDataCopyWithImpl<$Res>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._self, this._then);

  final ProductData _self;
  final $Res Function(ProductData) _then;

/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? itemId = null,Object? productName = null,Object? description = null,Object? category = null,Object? barcode = null,Object? itemGroup = null,Object? packSize = freezed,Object? salesUnit = null,Object? unitPrice = null,Object? image = null,Object? itemDiscountGroup = null,Object? itemFocGroup = null,Object? inventDimId = null,Object? status = null,Object? companyCode = null,Object? companyId = null,Object? createAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,itemGroup: null == itemGroup ? _self.itemGroup : itemGroup // ignore: cast_nullable_to_non_nullable
as String,packSize: freezed == packSize ? _self.packSize : packSize // ignore: cast_nullable_to_non_nullable
as String?,salesUnit: null == salesUnit ? _self.salesUnit : salesUnit // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,itemDiscountGroup: null == itemDiscountGroup ? _self.itemDiscountGroup : itemDiscountGroup // ignore: cast_nullable_to_non_nullable
as String,itemFocGroup: null == itemFocGroup ? _self.itemFocGroup : itemFocGroup // ignore: cast_nullable_to_non_nullable
as String,inventDimId: null == inventDimId ? _self.inventDimId : inventDimId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductData].
extension ProductDataPatterns on ProductData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductData value)  $default,){
final _that = this;
switch (_that) {
case _ProductData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductData value)?  $default,){
final _that = this;
switch (_that) {
case _ProductData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "productId")  String productId, @JsonKey(name: "itemId")  String itemId, @JsonKey(name: "productName")  String productName, @JsonKey(name: "description")  String description, @JsonKey(name: "category")  String category, @JsonKey(name: "barcode")  String barcode, @JsonKey(name: "itemGroup")  String itemGroup, @JsonKey(name: "packSize")  String? packSize, @JsonKey(name: "salesUnit")  String salesUnit, @JsonKey(name: "unitPrice")  String unitPrice, @JsonKey(name: "image")  String image, @JsonKey(name: "itemDiscountGroup")  String itemDiscountGroup, @JsonKey(name: "itemFOCGroup")  String itemFocGroup, @JsonKey(name: "inventDimId")  String inventDimId, @JsonKey(name: "status")  String status, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductData() when $default != null:
return $default(_that.id,_that.productId,_that.itemId,_that.productName,_that.description,_that.category,_that.barcode,_that.itemGroup,_that.packSize,_that.salesUnit,_that.unitPrice,_that.image,_that.itemDiscountGroup,_that.itemFocGroup,_that.inventDimId,_that.status,_that.companyCode,_that.companyId,_that.createAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "productId")  String productId, @JsonKey(name: "itemId")  String itemId, @JsonKey(name: "productName")  String productName, @JsonKey(name: "description")  String description, @JsonKey(name: "category")  String category, @JsonKey(name: "barcode")  String barcode, @JsonKey(name: "itemGroup")  String itemGroup, @JsonKey(name: "packSize")  String? packSize, @JsonKey(name: "salesUnit")  String salesUnit, @JsonKey(name: "unitPrice")  String unitPrice, @JsonKey(name: "image")  String image, @JsonKey(name: "itemDiscountGroup")  String itemDiscountGroup, @JsonKey(name: "itemFOCGroup")  String itemFocGroup, @JsonKey(name: "inventDimId")  String inventDimId, @JsonKey(name: "status")  String status, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProductData():
return $default(_that.id,_that.productId,_that.itemId,_that.productName,_that.description,_that.category,_that.barcode,_that.itemGroup,_that.packSize,_that.salesUnit,_that.unitPrice,_that.image,_that.itemDiscountGroup,_that.itemFocGroup,_that.inventDimId,_that.status,_that.companyCode,_that.companyId,_that.createAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "productId")  String productId, @JsonKey(name: "itemId")  String itemId, @JsonKey(name: "productName")  String productName, @JsonKey(name: "description")  String description, @JsonKey(name: "category")  String category, @JsonKey(name: "barcode")  String barcode, @JsonKey(name: "itemGroup")  String itemGroup, @JsonKey(name: "packSize")  String? packSize, @JsonKey(name: "salesUnit")  String salesUnit, @JsonKey(name: "unitPrice")  String unitPrice, @JsonKey(name: "image")  String image, @JsonKey(name: "itemDiscountGroup")  String itemDiscountGroup, @JsonKey(name: "itemFOCGroup")  String itemFocGroup, @JsonKey(name: "inventDimId")  String inventDimId, @JsonKey(name: "status")  String status, @JsonKey(name: "companyCode")  String companyCode, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "createAt")  DateTime createAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProductData() when $default != null:
return $default(_that.id,_that.productId,_that.itemId,_that.productName,_that.description,_that.category,_that.barcode,_that.itemGroup,_that.packSize,_that.salesUnit,_that.unitPrice,_that.image,_that.itemDiscountGroup,_that.itemFocGroup,_that.inventDimId,_that.status,_that.companyCode,_that.companyId,_that.createAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductData implements ProductData {
  const _ProductData({@JsonKey(name: "id") required this.id, @JsonKey(name: "productId") required this.productId, @JsonKey(name: "itemId") required this.itemId, @JsonKey(name: "productName") required this.productName, @JsonKey(name: "description") required this.description, @JsonKey(name: "category") required this.category, @JsonKey(name: "barcode") required this.barcode, @JsonKey(name: "itemGroup") required this.itemGroup, @JsonKey(name: "packSize") this.packSize, @JsonKey(name: "salesUnit") required this.salesUnit, @JsonKey(name: "unitPrice") required this.unitPrice, @JsonKey(name: "image") required this.image, @JsonKey(name: "itemDiscountGroup") required this.itemDiscountGroup, @JsonKey(name: "itemFOCGroup") required this.itemFocGroup, @JsonKey(name: "inventDimId") required this.inventDimId, @JsonKey(name: "status") required this.status, @JsonKey(name: "companyCode") required this.companyCode, @JsonKey(name: "companyId") required this.companyId, @JsonKey(name: "createAt") required this.createAt, @JsonKey(name: "updatedAt") required this.updatedAt});
  factory _ProductData.fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "productId") final  String productId;
@override@JsonKey(name: "itemId") final  String itemId;
@override@JsonKey(name: "productName") final  String productName;
@override@JsonKey(name: "description") final  String description;
@override@JsonKey(name: "category") final  String category;
@override@JsonKey(name: "barcode") final  String barcode;
@override@JsonKey(name: "itemGroup") final  String itemGroup;
@override@JsonKey(name: "packSize") final  String? packSize;
@override@JsonKey(name: "salesUnit") final  String salesUnit;
@override@JsonKey(name: "unitPrice") final  String unitPrice;
@override@JsonKey(name: "image") final  String image;
@override@JsonKey(name: "itemDiscountGroup") final  String itemDiscountGroup;
@override@JsonKey(name: "itemFOCGroup") final  String itemFocGroup;
@override@JsonKey(name: "inventDimId") final  String inventDimId;
@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "companyCode") final  String companyCode;
@override@JsonKey(name: "companyId") final  int companyId;
@override@JsonKey(name: "createAt") final  DateTime createAt;
@override@JsonKey(name: "updatedAt") final  DateTime updatedAt;

/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDataCopyWith<_ProductData> get copyWith => __$ProductDataCopyWithImpl<_ProductData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductData&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.itemGroup, itemGroup) || other.itemGroup == itemGroup)&&(identical(other.packSize, packSize) || other.packSize == packSize)&&(identical(other.salesUnit, salesUnit) || other.salesUnit == salesUnit)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.image, image) || other.image == image)&&(identical(other.itemDiscountGroup, itemDiscountGroup) || other.itemDiscountGroup == itemDiscountGroup)&&(identical(other.itemFocGroup, itemFocGroup) || other.itemFocGroup == itemFocGroup)&&(identical(other.inventDimId, inventDimId) || other.inventDimId == inventDimId)&&(identical(other.status, status) || other.status == status)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,productId,itemId,productName,description,category,barcode,itemGroup,packSize,salesUnit,unitPrice,image,itemDiscountGroup,itemFocGroup,inventDimId,status,companyCode,companyId,createAt,updatedAt]);

@override
String toString() {
  return 'ProductData(id: $id, productId: $productId, itemId: $itemId, productName: $productName, description: $description, category: $category, barcode: $barcode, itemGroup: $itemGroup, packSize: $packSize, salesUnit: $salesUnit, unitPrice: $unitPrice, image: $image, itemDiscountGroup: $itemDiscountGroup, itemFocGroup: $itemFocGroup, inventDimId: $inventDimId, status: $status, companyCode: $companyCode, companyId: $companyId, createAt: $createAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProductDataCopyWith<$Res> implements $ProductDataCopyWith<$Res> {
  factory _$ProductDataCopyWith(_ProductData value, $Res Function(_ProductData) _then) = __$ProductDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "productId") String productId,@JsonKey(name: "itemId") String itemId,@JsonKey(name: "productName") String productName,@JsonKey(name: "description") String description,@JsonKey(name: "category") String category,@JsonKey(name: "barcode") String barcode,@JsonKey(name: "itemGroup") String itemGroup,@JsonKey(name: "packSize") String? packSize,@JsonKey(name: "salesUnit") String salesUnit,@JsonKey(name: "unitPrice") String unitPrice,@JsonKey(name: "image") String image,@JsonKey(name: "itemDiscountGroup") String itemDiscountGroup,@JsonKey(name: "itemFOCGroup") String itemFocGroup,@JsonKey(name: "inventDimId") String inventDimId,@JsonKey(name: "status") String status,@JsonKey(name: "companyCode") String companyCode,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "createAt") DateTime createAt,@JsonKey(name: "updatedAt") DateTime updatedAt
});




}
/// @nodoc
class __$ProductDataCopyWithImpl<$Res>
    implements _$ProductDataCopyWith<$Res> {
  __$ProductDataCopyWithImpl(this._self, this._then);

  final _ProductData _self;
  final $Res Function(_ProductData) _then;

/// Create a copy of ProductData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? itemId = null,Object? productName = null,Object? description = null,Object? category = null,Object? barcode = null,Object? itemGroup = null,Object? packSize = freezed,Object? salesUnit = null,Object? unitPrice = null,Object? image = null,Object? itemDiscountGroup = null,Object? itemFocGroup = null,Object? inventDimId = null,Object? status = null,Object? companyCode = null,Object? companyId = null,Object? createAt = null,Object? updatedAt = null,}) {
  return _then(_ProductData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,itemGroup: null == itemGroup ? _self.itemGroup : itemGroup // ignore: cast_nullable_to_non_nullable
as String,packSize: freezed == packSize ? _self.packSize : packSize // ignore: cast_nullable_to_non_nullable
as String?,salesUnit: null == salesUnit ? _self.salesUnit : salesUnit // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,itemDiscountGroup: null == itemDiscountGroup ? _self.itemDiscountGroup : itemDiscountGroup // ignore: cast_nullable_to_non_nullable
as String,itemFocGroup: null == itemFocGroup ? _self.itemFocGroup : itemFocGroup // ignore: cast_nullable_to_non_nullable
as String,inventDimId: null == inventDimId ? _self.inventDimId : inventDimId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,companyCode: null == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
