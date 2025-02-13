// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_price_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductPriceResponse _$ProductPriceResponseFromJson(Map<String, dynamic> json) {
  return _ProductPriceResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductPriceResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<ProductPriceData> get data => throw _privateConstructorUsedError;

  /// Serializes this ProductPriceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductPriceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductPriceResponseCopyWith<ProductPriceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPriceResponseCopyWith<$Res> {
  factory $ProductPriceResponseCopyWith(ProductPriceResponse value,
          $Res Function(ProductPriceResponse) then) =
      _$ProductPriceResponseCopyWithImpl<$Res, ProductPriceResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "data") List<ProductPriceData> data});
}

/// @nodoc
class _$ProductPriceResponseCopyWithImpl<$Res,
        $Val extends ProductPriceResponse>
    implements $ProductPriceResponseCopyWith<$Res> {
  _$ProductPriceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductPriceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductPriceData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductPriceResponseImplCopyWith<$Res>
    implements $ProductPriceResponseCopyWith<$Res> {
  factory _$$ProductPriceResponseImplCopyWith(_$ProductPriceResponseImpl value,
          $Res Function(_$ProductPriceResponseImpl) then) =
      __$$ProductPriceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "data") List<ProductPriceData> data});
}

/// @nodoc
class __$$ProductPriceResponseImplCopyWithImpl<$Res>
    extends _$ProductPriceResponseCopyWithImpl<$Res, _$ProductPriceResponseImpl>
    implements _$$ProductPriceResponseImplCopyWith<$Res> {
  __$$ProductPriceResponseImplCopyWithImpl(_$ProductPriceResponseImpl _value,
      $Res Function(_$ProductPriceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductPriceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_$ProductPriceResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductPriceData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductPriceResponseImpl implements _ProductPriceResponse {
  const _$ProductPriceResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "data") required final List<ProductPriceData> data})
      : _data = data;

  factory _$ProductPriceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductPriceResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "total")
  final int total;
  final List<ProductPriceData> _data;
  @override
  @JsonKey(name: "data")
  List<ProductPriceData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProductPriceResponse(status: $status, total: $total, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPriceResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, total, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ProductPriceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPriceResponseImplCopyWith<_$ProductPriceResponseImpl>
      get copyWith =>
          __$$ProductPriceResponseImplCopyWithImpl<_$ProductPriceResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductPriceResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductPriceResponse implements ProductPriceResponse {
  const factory _ProductPriceResponse(
          {@JsonKey(name: "status") required final String status,
          @JsonKey(name: "total") required final int total,
          @JsonKey(name: "data") required final List<ProductPriceData> data}) =
      _$ProductPriceResponseImpl;

  factory _ProductPriceResponse.fromJson(Map<String, dynamic> json) =
      _$ProductPriceResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "data")
  List<ProductPriceData> get data;

  /// Create a copy of ProductPriceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductPriceResponseImplCopyWith<_$ProductPriceResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductPriceData _$ProductPriceDataFromJson(Map<String, dynamic> json) {
  return _ProductPriceData.fromJson(json);
}

/// @nodoc
mixin _$ProductPriceData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "itemId")
  String get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: "packSize")
  String? get packSize => throw _privateConstructorUsedError;
  @JsonKey(name: "fromDate")
  DateTime get fromDate => throw _privateConstructorUsedError;
  @JsonKey(name: "toDate")
  DateTime get toDate => throw _privateConstructorUsedError;
  @JsonKey(name: "unitPrice")
  String get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "currencyCode")
  String get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "salesUnit")
  String get salesUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "priceGroup")
  String get priceGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "recId")
  String get recId => throw _privateConstructorUsedError;
  @JsonKey(name: "companyId")
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "companyCode")
  String get companyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "createAt")
  DateTime get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProductPriceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductPriceDataCopyWith<ProductPriceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPriceDataCopyWith<$Res> {
  factory $ProductPriceDataCopyWith(
          ProductPriceData value, $Res Function(ProductPriceData) then) =
      _$ProductPriceDataCopyWithImpl<$Res, ProductPriceData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "productId") String productId,
      @JsonKey(name: "itemId") String itemId,
      @JsonKey(name: "packSize") String? packSize,
      @JsonKey(name: "fromDate") DateTime fromDate,
      @JsonKey(name: "toDate") DateTime toDate,
      @JsonKey(name: "unitPrice") String unitPrice,
      @JsonKey(name: "currencyCode") String currencyCode,
      @JsonKey(name: "salesUnit") String salesUnit,
      @JsonKey(name: "priceGroup") String priceGroup,
      @JsonKey(name: "recId") String recId,
      @JsonKey(name: "companyId") int companyId,
      @JsonKey(name: "companyCode") String companyCode,
      @JsonKey(name: "createAt") DateTime createAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt});
}

/// @nodoc
class _$ProductPriceDataCopyWithImpl<$Res, $Val extends ProductPriceData>
    implements $ProductPriceDataCopyWith<$Res> {
  _$ProductPriceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductPriceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? itemId = null,
    Object? packSize = freezed,
    Object? fromDate = null,
    Object? toDate = null,
    Object? unitPrice = null,
    Object? currencyCode = null,
    Object? salesUnit = null,
    Object? priceGroup = null,
    Object? recId = null,
    Object? companyId = null,
    Object? companyCode = null,
    Object? createAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      packSize: freezed == packSize
          ? _value.packSize
          : packSize // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      salesUnit: null == salesUnit
          ? _value.salesUnit
          : salesUnit // ignore: cast_nullable_to_non_nullable
              as String,
      priceGroup: null == priceGroup
          ? _value.priceGroup
          : priceGroup // ignore: cast_nullable_to_non_nullable
              as String,
      recId: null == recId
          ? _value.recId
          : recId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      companyCode: null == companyCode
          ? _value.companyCode
          : companyCode // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductPriceDataImplCopyWith<$Res>
    implements $ProductPriceDataCopyWith<$Res> {
  factory _$$ProductPriceDataImplCopyWith(_$ProductPriceDataImpl value,
          $Res Function(_$ProductPriceDataImpl) then) =
      __$$ProductPriceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "productId") String productId,
      @JsonKey(name: "itemId") String itemId,
      @JsonKey(name: "packSize") String? packSize,
      @JsonKey(name: "fromDate") DateTime fromDate,
      @JsonKey(name: "toDate") DateTime toDate,
      @JsonKey(name: "unitPrice") String unitPrice,
      @JsonKey(name: "currencyCode") String currencyCode,
      @JsonKey(name: "salesUnit") String salesUnit,
      @JsonKey(name: "priceGroup") String priceGroup,
      @JsonKey(name: "recId") String recId,
      @JsonKey(name: "companyId") int companyId,
      @JsonKey(name: "companyCode") String companyCode,
      @JsonKey(name: "createAt") DateTime createAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt});
}

/// @nodoc
class __$$ProductPriceDataImplCopyWithImpl<$Res>
    extends _$ProductPriceDataCopyWithImpl<$Res, _$ProductPriceDataImpl>
    implements _$$ProductPriceDataImplCopyWith<$Res> {
  __$$ProductPriceDataImplCopyWithImpl(_$ProductPriceDataImpl _value,
      $Res Function(_$ProductPriceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductPriceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? itemId = null,
    Object? packSize = freezed,
    Object? fromDate = null,
    Object? toDate = null,
    Object? unitPrice = null,
    Object? currencyCode = null,
    Object? salesUnit = null,
    Object? priceGroup = null,
    Object? recId = null,
    Object? companyId = null,
    Object? companyCode = null,
    Object? createAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ProductPriceDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      packSize: freezed == packSize
          ? _value.packSize
          : packSize // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      salesUnit: null == salesUnit
          ? _value.salesUnit
          : salesUnit // ignore: cast_nullable_to_non_nullable
              as String,
      priceGroup: null == priceGroup
          ? _value.priceGroup
          : priceGroup // ignore: cast_nullable_to_non_nullable
              as String,
      recId: null == recId
          ? _value.recId
          : recId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      companyCode: null == companyCode
          ? _value.companyCode
          : companyCode // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductPriceDataImpl implements _ProductPriceData {
  const _$ProductPriceDataImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "productId") required this.productId,
      @JsonKey(name: "itemId") required this.itemId,
      @JsonKey(name: "packSize") this.packSize,
      @JsonKey(name: "fromDate") required this.fromDate,
      @JsonKey(name: "toDate") required this.toDate,
      @JsonKey(name: "unitPrice") required this.unitPrice,
      @JsonKey(name: "currencyCode") required this.currencyCode,
      @JsonKey(name: "salesUnit") required this.salesUnit,
      @JsonKey(name: "priceGroup") required this.priceGroup,
      @JsonKey(name: "recId") required this.recId,
      @JsonKey(name: "companyId") required this.companyId,
      @JsonKey(name: "companyCode") required this.companyCode,
      @JsonKey(name: "createAt") required this.createAt,
      @JsonKey(name: "updatedAt") required this.updatedAt});

  factory _$ProductPriceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductPriceDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "productId")
  final String productId;
  @override
  @JsonKey(name: "itemId")
  final String itemId;
  @override
  @JsonKey(name: "packSize")
  final String? packSize;
  @override
  @JsonKey(name: "fromDate")
  final DateTime fromDate;
  @override
  @JsonKey(name: "toDate")
  final DateTime toDate;
  @override
  @JsonKey(name: "unitPrice")
  final String unitPrice;
  @override
  @JsonKey(name: "currencyCode")
  final String currencyCode;
  @override
  @JsonKey(name: "salesUnit")
  final String salesUnit;
  @override
  @JsonKey(name: "priceGroup")
  final String priceGroup;
  @override
  @JsonKey(name: "recId")
  final String recId;
  @override
  @JsonKey(name: "companyId")
  final int companyId;
  @override
  @JsonKey(name: "companyCode")
  final String companyCode;
  @override
  @JsonKey(name: "createAt")
  final DateTime createAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ProductPriceData(id: $id, productId: $productId, itemId: $itemId, packSize: $packSize, fromDate: $fromDate, toDate: $toDate, unitPrice: $unitPrice, currencyCode: $currencyCode, salesUnit: $salesUnit, priceGroup: $priceGroup, recId: $recId, companyId: $companyId, companyCode: $companyCode, createAt: $createAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPriceDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.packSize, packSize) ||
                other.packSize == packSize) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.salesUnit, salesUnit) ||
                other.salesUnit == salesUnit) &&
            (identical(other.priceGroup, priceGroup) ||
                other.priceGroup == priceGroup) &&
            (identical(other.recId, recId) || other.recId == recId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyCode, companyCode) ||
                other.companyCode == companyCode) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      itemId,
      packSize,
      fromDate,
      toDate,
      unitPrice,
      currencyCode,
      salesUnit,
      priceGroup,
      recId,
      companyId,
      companyCode,
      createAt,
      updatedAt);

  /// Create a copy of ProductPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPriceDataImplCopyWith<_$ProductPriceDataImpl> get copyWith =>
      __$$ProductPriceDataImplCopyWithImpl<_$ProductPriceDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductPriceDataImplToJson(
      this,
    );
  }
}

abstract class _ProductPriceData implements ProductPriceData {
  const factory _ProductPriceData(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "productId") required final String productId,
          @JsonKey(name: "itemId") required final String itemId,
          @JsonKey(name: "packSize") final String? packSize,
          @JsonKey(name: "fromDate") required final DateTime fromDate,
          @JsonKey(name: "toDate") required final DateTime toDate,
          @JsonKey(name: "unitPrice") required final String unitPrice,
          @JsonKey(name: "currencyCode") required final String currencyCode,
          @JsonKey(name: "salesUnit") required final String salesUnit,
          @JsonKey(name: "priceGroup") required final String priceGroup,
          @JsonKey(name: "recId") required final String recId,
          @JsonKey(name: "companyId") required final int companyId,
          @JsonKey(name: "companyCode") required final String companyCode,
          @JsonKey(name: "createAt") required final DateTime createAt,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt}) =
      _$ProductPriceDataImpl;

  factory _ProductPriceData.fromJson(Map<String, dynamic> json) =
      _$ProductPriceDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "productId")
  String get productId;
  @override
  @JsonKey(name: "itemId")
  String get itemId;
  @override
  @JsonKey(name: "packSize")
  String? get packSize;
  @override
  @JsonKey(name: "fromDate")
  DateTime get fromDate;
  @override
  @JsonKey(name: "toDate")
  DateTime get toDate;
  @override
  @JsonKey(name: "unitPrice")
  String get unitPrice;
  @override
  @JsonKey(name: "currencyCode")
  String get currencyCode;
  @override
  @JsonKey(name: "salesUnit")
  String get salesUnit;
  @override
  @JsonKey(name: "priceGroup")
  String get priceGroup;
  @override
  @JsonKey(name: "recId")
  String get recId;
  @override
  @JsonKey(name: "companyId")
  int get companyId;
  @override
  @JsonKey(name: "companyCode")
  String get companyCode;
  @override
  @JsonKey(name: "createAt")
  DateTime get createAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;

  /// Create a copy of ProductPriceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductPriceDataImplCopyWith<_$ProductPriceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
