// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_line_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesLineRequest {

 int? get id; String get salesId; int get lineId; String get itemId; String get productId; String get productName; String get productDescription; String get packSize; double get quantity; String get salesUnit; double get salesPrice; double get taxAmount; double get lineAmount; String get inventDimId; String get transactionDate; String get deviceId; int get syncStatus; int get companyId;
/// Create a copy of SalesLineRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesLineRequestCopyWith<SalesLineRequest> get copyWith => _$SalesLineRequestCopyWithImpl<SalesLineRequest>(this as SalesLineRequest, _$identity);

  /// Serializes this SalesLineRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesLineRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.salesId, salesId) || other.salesId == salesId)&&(identical(other.lineId, lineId) || other.lineId == lineId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productDescription, productDescription) || other.productDescription == productDescription)&&(identical(other.packSize, packSize) || other.packSize == packSize)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.salesUnit, salesUnit) || other.salesUnit == salesUnit)&&(identical(other.salesPrice, salesPrice) || other.salesPrice == salesPrice)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.lineAmount, lineAmount) || other.lineAmount == lineAmount)&&(identical(other.inventDimId, inventDimId) || other.inventDimId == inventDimId)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.syncStatus, syncStatus) || other.syncStatus == syncStatus)&&(identical(other.companyId, companyId) || other.companyId == companyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,salesId,lineId,itemId,productId,productName,productDescription,packSize,quantity,salesUnit,salesPrice,taxAmount,lineAmount,inventDimId,transactionDate,deviceId,syncStatus,companyId);

@override
String toString() {
  return 'SalesLineRequest(id: $id, salesId: $salesId, lineId: $lineId, itemId: $itemId, productId: $productId, productName: $productName, productDescription: $productDescription, packSize: $packSize, quantity: $quantity, salesUnit: $salesUnit, salesPrice: $salesPrice, taxAmount: $taxAmount, lineAmount: $lineAmount, inventDimId: $inventDimId, transactionDate: $transactionDate, deviceId: $deviceId, syncStatus: $syncStatus, companyId: $companyId)';
}


}

/// @nodoc
abstract mixin class $SalesLineRequestCopyWith<$Res>  {
  factory $SalesLineRequestCopyWith(SalesLineRequest value, $Res Function(SalesLineRequest) _then) = _$SalesLineRequestCopyWithImpl;
@useResult
$Res call({
 int? id, String salesId, int lineId, String itemId, String productId, String productName, String productDescription, String packSize, double quantity, String salesUnit, double salesPrice, double taxAmount, double lineAmount, String inventDimId, String transactionDate, String deviceId, int syncStatus, int companyId
});




}
/// @nodoc
class _$SalesLineRequestCopyWithImpl<$Res>
    implements $SalesLineRequestCopyWith<$Res> {
  _$SalesLineRequestCopyWithImpl(this._self, this._then);

  final SalesLineRequest _self;
  final $Res Function(SalesLineRequest) _then;

/// Create a copy of SalesLineRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? salesId = null,Object? lineId = null,Object? itemId = null,Object? productId = null,Object? productName = null,Object? productDescription = null,Object? packSize = null,Object? quantity = null,Object? salesUnit = null,Object? salesPrice = null,Object? taxAmount = null,Object? lineAmount = null,Object? inventDimId = null,Object? transactionDate = null,Object? deviceId = null,Object? syncStatus = null,Object? companyId = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,salesId: null == salesId ? _self.salesId : salesId // ignore: cast_nullable_to_non_nullable
as String,lineId: null == lineId ? _self.lineId : lineId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productDescription: null == productDescription ? _self.productDescription : productDescription // ignore: cast_nullable_to_non_nullable
as String,packSize: null == packSize ? _self.packSize : packSize // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,salesUnit: null == salesUnit ? _self.salesUnit : salesUnit // ignore: cast_nullable_to_non_nullable
as String,salesPrice: null == salesPrice ? _self.salesPrice : salesPrice // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,lineAmount: null == lineAmount ? _self.lineAmount : lineAmount // ignore: cast_nullable_to_non_nullable
as double,inventDimId: null == inventDimId ? _self.inventDimId : inventDimId // ignore: cast_nullable_to_non_nullable
as String,transactionDate: null == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,syncStatus: null == syncStatus ? _self.syncStatus : syncStatus // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesLineRequest].
extension SalesLineRequestPatterns on SalesLineRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesLineRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesLineRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesLineRequest value)  $default,){
final _that = this;
switch (_that) {
case _SalesLineRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesLineRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SalesLineRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String salesId,  int lineId,  String itemId,  String productId,  String productName,  String productDescription,  String packSize,  double quantity,  String salesUnit,  double salesPrice,  double taxAmount,  double lineAmount,  String inventDimId,  String transactionDate,  String deviceId,  int syncStatus,  int companyId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesLineRequest() when $default != null:
return $default(_that.id,_that.salesId,_that.lineId,_that.itemId,_that.productId,_that.productName,_that.productDescription,_that.packSize,_that.quantity,_that.salesUnit,_that.salesPrice,_that.taxAmount,_that.lineAmount,_that.inventDimId,_that.transactionDate,_that.deviceId,_that.syncStatus,_that.companyId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String salesId,  int lineId,  String itemId,  String productId,  String productName,  String productDescription,  String packSize,  double quantity,  String salesUnit,  double salesPrice,  double taxAmount,  double lineAmount,  String inventDimId,  String transactionDate,  String deviceId,  int syncStatus,  int companyId)  $default,) {final _that = this;
switch (_that) {
case _SalesLineRequest():
return $default(_that.id,_that.salesId,_that.lineId,_that.itemId,_that.productId,_that.productName,_that.productDescription,_that.packSize,_that.quantity,_that.salesUnit,_that.salesPrice,_that.taxAmount,_that.lineAmount,_that.inventDimId,_that.transactionDate,_that.deviceId,_that.syncStatus,_that.companyId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String salesId,  int lineId,  String itemId,  String productId,  String productName,  String productDescription,  String packSize,  double quantity,  String salesUnit,  double salesPrice,  double taxAmount,  double lineAmount,  String inventDimId,  String transactionDate,  String deviceId,  int syncStatus,  int companyId)?  $default,) {final _that = this;
switch (_that) {
case _SalesLineRequest() when $default != null:
return $default(_that.id,_that.salesId,_that.lineId,_that.itemId,_that.productId,_that.productName,_that.productDescription,_that.packSize,_that.quantity,_that.salesUnit,_that.salesPrice,_that.taxAmount,_that.lineAmount,_that.inventDimId,_that.transactionDate,_that.deviceId,_that.syncStatus,_that.companyId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesLineRequest implements SalesLineRequest {
   _SalesLineRequest({this.id, required this.salesId, required this.lineId, required this.itemId, required this.productId, required this.productName, required this.productDescription, required this.packSize, required this.quantity, required this.salesUnit, required this.salesPrice, required this.taxAmount, required this.lineAmount, required this.inventDimId, required this.transactionDate, required this.deviceId, required this.syncStatus, required this.companyId});
  factory _SalesLineRequest.fromJson(Map<String, dynamic> json) => _$SalesLineRequestFromJson(json);

@override final  int? id;
@override final  String salesId;
@override final  int lineId;
@override final  String itemId;
@override final  String productId;
@override final  String productName;
@override final  String productDescription;
@override final  String packSize;
@override final  double quantity;
@override final  String salesUnit;
@override final  double salesPrice;
@override final  double taxAmount;
@override final  double lineAmount;
@override final  String inventDimId;
@override final  String transactionDate;
@override final  String deviceId;
@override final  int syncStatus;
@override final  int companyId;

/// Create a copy of SalesLineRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesLineRequestCopyWith<_SalesLineRequest> get copyWith => __$SalesLineRequestCopyWithImpl<_SalesLineRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesLineRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesLineRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.salesId, salesId) || other.salesId == salesId)&&(identical(other.lineId, lineId) || other.lineId == lineId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productDescription, productDescription) || other.productDescription == productDescription)&&(identical(other.packSize, packSize) || other.packSize == packSize)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.salesUnit, salesUnit) || other.salesUnit == salesUnit)&&(identical(other.salesPrice, salesPrice) || other.salesPrice == salesPrice)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.lineAmount, lineAmount) || other.lineAmount == lineAmount)&&(identical(other.inventDimId, inventDimId) || other.inventDimId == inventDimId)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.syncStatus, syncStatus) || other.syncStatus == syncStatus)&&(identical(other.companyId, companyId) || other.companyId == companyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,salesId,lineId,itemId,productId,productName,productDescription,packSize,quantity,salesUnit,salesPrice,taxAmount,lineAmount,inventDimId,transactionDate,deviceId,syncStatus,companyId);

@override
String toString() {
  return 'SalesLineRequest(id: $id, salesId: $salesId, lineId: $lineId, itemId: $itemId, productId: $productId, productName: $productName, productDescription: $productDescription, packSize: $packSize, quantity: $quantity, salesUnit: $salesUnit, salesPrice: $salesPrice, taxAmount: $taxAmount, lineAmount: $lineAmount, inventDimId: $inventDimId, transactionDate: $transactionDate, deviceId: $deviceId, syncStatus: $syncStatus, companyId: $companyId)';
}


}

/// @nodoc
abstract mixin class _$SalesLineRequestCopyWith<$Res> implements $SalesLineRequestCopyWith<$Res> {
  factory _$SalesLineRequestCopyWith(_SalesLineRequest value, $Res Function(_SalesLineRequest) _then) = __$SalesLineRequestCopyWithImpl;
@override @useResult
$Res call({
 int? id, String salesId, int lineId, String itemId, String productId, String productName, String productDescription, String packSize, double quantity, String salesUnit, double salesPrice, double taxAmount, double lineAmount, String inventDimId, String transactionDate, String deviceId, int syncStatus, int companyId
});




}
/// @nodoc
class __$SalesLineRequestCopyWithImpl<$Res>
    implements _$SalesLineRequestCopyWith<$Res> {
  __$SalesLineRequestCopyWithImpl(this._self, this._then);

  final _SalesLineRequest _self;
  final $Res Function(_SalesLineRequest) _then;

/// Create a copy of SalesLineRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? salesId = null,Object? lineId = null,Object? itemId = null,Object? productId = null,Object? productName = null,Object? productDescription = null,Object? packSize = null,Object? quantity = null,Object? salesUnit = null,Object? salesPrice = null,Object? taxAmount = null,Object? lineAmount = null,Object? inventDimId = null,Object? transactionDate = null,Object? deviceId = null,Object? syncStatus = null,Object? companyId = null,}) {
  return _then(_SalesLineRequest(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,salesId: null == salesId ? _self.salesId : salesId // ignore: cast_nullable_to_non_nullable
as String,lineId: null == lineId ? _self.lineId : lineId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productDescription: null == productDescription ? _self.productDescription : productDescription // ignore: cast_nullable_to_non_nullable
as String,packSize: null == packSize ? _self.packSize : packSize // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,salesUnit: null == salesUnit ? _self.salesUnit : salesUnit // ignore: cast_nullable_to_non_nullable
as String,salesPrice: null == salesPrice ? _self.salesPrice : salesPrice // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,lineAmount: null == lineAmount ? _self.lineAmount : lineAmount // ignore: cast_nullable_to_non_nullable
as double,inventDimId: null == inventDimId ? _self.inventDimId : inventDimId // ignore: cast_nullable_to_non_nullable
as String,transactionDate: null == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,syncStatus: null == syncStatus ? _self.syncStatus : syncStatus // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
