// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<ProductData> get data => throw _privateConstructorUsedError;

  /// Serializes this ProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
    ProductResponse value,
    $Res Function(ProductResponse) then,
  ) = _$ProductResponseCopyWithImpl<$Res, ProductResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "total") int total,
    @JsonKey(name: "data") List<ProductData> data,
  });
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res, $Val extends ProductResponse>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(
      _value.copyWith(
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
                      as List<ProductData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductResponseImplCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$ProductResponseImplCopyWith(
    _$ProductResponseImpl value,
    $Res Function(_$ProductResponseImpl) then,
  ) = __$$ProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "total") int total,
    @JsonKey(name: "data") List<ProductData> data,
  });
}

/// @nodoc
class __$$ProductResponseImplCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res, _$ProductResponseImpl>
    implements _$$ProductResponseImplCopyWith<$Res> {
  __$$ProductResponseImplCopyWithImpl(
    _$ProductResponseImpl _value,
    $Res Function(_$ProductResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(
      _$ProductResponseImpl(
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
                  as List<ProductData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseImpl implements _ProductResponse {
  const _$ProductResponseImpl({
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "total") required this.total,
    @JsonKey(name: "data") required final List<ProductData> data,
  }) : _data = data;

  factory _$ProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "total")
  final int total;
  final List<ProductData> _data;
  @override
  @JsonKey(name: "data")
  List<ProductData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProductResponse(status: $status, total: $total, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    total,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      __$$ProductResponseImplCopyWithImpl<_$ProductResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseImplToJson(this);
  }
}

abstract class _ProductResponse implements ProductResponse {
  const factory _ProductResponse({
    @JsonKey(name: "status") required final String status,
    @JsonKey(name: "total") required final int total,
    @JsonKey(name: "data") required final List<ProductData> data,
  }) = _$ProductResponseImpl;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProductResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "data")
  List<ProductData> get data;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "itemId")
  String get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: "productName")
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  String get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "itemGroup")
  String get itemGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "packSize")
  String? get packSize => throw _privateConstructorUsedError;
  @JsonKey(name: "salesUnit")
  String get salesUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "unitPrice")
  String get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "itemDiscountGroup")
  String get itemDiscountGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "itemFOCGroup")
  String get itemFocGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "inventDimId")
  String get inventDimId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "companyCode")
  String get companyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "companyId")
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "createAt")
  DateTime get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
    ProductData value,
    $Res Function(ProductData) then,
  ) = _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "productId") String productId,
    @JsonKey(name: "itemId") String itemId,
    @JsonKey(name: "productName") String productName,
    @JsonKey(name: "description") String description,
    @JsonKey(name: "category") String category,
    @JsonKey(name: "barcode") String barcode,
    @JsonKey(name: "itemGroup") String itemGroup,
    @JsonKey(name: "packSize") String? packSize,
    @JsonKey(name: "salesUnit") String salesUnit,
    @JsonKey(name: "unitPrice") String unitPrice,
    @JsonKey(name: "image") String image,
    @JsonKey(name: "itemDiscountGroup") String itemDiscountGroup,
    @JsonKey(name: "itemFOCGroup") String itemFocGroup,
    @JsonKey(name: "inventDimId") String inventDimId,
    @JsonKey(name: "status") String status,
    @JsonKey(name: "companyCode") String companyCode,
    @JsonKey(name: "companyId") int companyId,
    @JsonKey(name: "createAt") DateTime createAt,
    @JsonKey(name: "updatedAt") DateTime updatedAt,
  });
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? itemId = null,
    Object? productName = null,
    Object? description = null,
    Object? category = null,
    Object? barcode = null,
    Object? itemGroup = null,
    Object? packSize = freezed,
    Object? salesUnit = null,
    Object? unitPrice = null,
    Object? image = null,
    Object? itemDiscountGroup = null,
    Object? itemFocGroup = null,
    Object? inventDimId = null,
    Object? status = null,
    Object? companyCode = null,
    Object? companyId = null,
    Object? createAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
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
            productName: null == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            barcode: null == barcode
                ? _value.barcode
                : barcode // ignore: cast_nullable_to_non_nullable
                      as String,
            itemGroup: null == itemGroup
                ? _value.itemGroup
                : itemGroup // ignore: cast_nullable_to_non_nullable
                      as String,
            packSize: freezed == packSize
                ? _value.packSize
                : packSize // ignore: cast_nullable_to_non_nullable
                      as String?,
            salesUnit: null == salesUnit
                ? _value.salesUnit
                : salesUnit // ignore: cast_nullable_to_non_nullable
                      as String,
            unitPrice: null == unitPrice
                ? _value.unitPrice
                : unitPrice // ignore: cast_nullable_to_non_nullable
                      as String,
            image: null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String,
            itemDiscountGroup: null == itemDiscountGroup
                ? _value.itemDiscountGroup
                : itemDiscountGroup // ignore: cast_nullable_to_non_nullable
                      as String,
            itemFocGroup: null == itemFocGroup
                ? _value.itemFocGroup
                : itemFocGroup // ignore: cast_nullable_to_non_nullable
                      as String,
            inventDimId: null == inventDimId
                ? _value.inventDimId
                : inventDimId // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            companyCode: null == companyCode
                ? _value.companyCode
                : companyCode // ignore: cast_nullable_to_non_nullable
                      as String,
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as int,
            createAt: null == createAt
                ? _value.createAt
                : createAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductDataImplCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$ProductDataImplCopyWith(
    _$ProductDataImpl value,
    $Res Function(_$ProductDataImpl) then,
  ) = __$$ProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "productId") String productId,
    @JsonKey(name: "itemId") String itemId,
    @JsonKey(name: "productName") String productName,
    @JsonKey(name: "description") String description,
    @JsonKey(name: "category") String category,
    @JsonKey(name: "barcode") String barcode,
    @JsonKey(name: "itemGroup") String itemGroup,
    @JsonKey(name: "packSize") String? packSize,
    @JsonKey(name: "salesUnit") String salesUnit,
    @JsonKey(name: "unitPrice") String unitPrice,
    @JsonKey(name: "image") String image,
    @JsonKey(name: "itemDiscountGroup") String itemDiscountGroup,
    @JsonKey(name: "itemFOCGroup") String itemFocGroup,
    @JsonKey(name: "inventDimId") String inventDimId,
    @JsonKey(name: "status") String status,
    @JsonKey(name: "companyCode") String companyCode,
    @JsonKey(name: "companyId") int companyId,
    @JsonKey(name: "createAt") DateTime createAt,
    @JsonKey(name: "updatedAt") DateTime updatedAt,
  });
}

/// @nodoc
class __$$ProductDataImplCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$ProductDataImpl>
    implements _$$ProductDataImplCopyWith<$Res> {
  __$$ProductDataImplCopyWithImpl(
    _$ProductDataImpl _value,
    $Res Function(_$ProductDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? itemId = null,
    Object? productName = null,
    Object? description = null,
    Object? category = null,
    Object? barcode = null,
    Object? itemGroup = null,
    Object? packSize = freezed,
    Object? salesUnit = null,
    Object? unitPrice = null,
    Object? image = null,
    Object? itemDiscountGroup = null,
    Object? itemFocGroup = null,
    Object? inventDimId = null,
    Object? status = null,
    Object? companyCode = null,
    Object? companyId = null,
    Object? createAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$ProductDataImpl(
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
        productName: null == productName
            ? _value.productName
            : productName // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        barcode: null == barcode
            ? _value.barcode
            : barcode // ignore: cast_nullable_to_non_nullable
                  as String,
        itemGroup: null == itemGroup
            ? _value.itemGroup
            : itemGroup // ignore: cast_nullable_to_non_nullable
                  as String,
        packSize: freezed == packSize
            ? _value.packSize
            : packSize // ignore: cast_nullable_to_non_nullable
                  as String?,
        salesUnit: null == salesUnit
            ? _value.salesUnit
            : salesUnit // ignore: cast_nullable_to_non_nullable
                  as String,
        unitPrice: null == unitPrice
            ? _value.unitPrice
            : unitPrice // ignore: cast_nullable_to_non_nullable
                  as String,
        image: null == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String,
        itemDiscountGroup: null == itemDiscountGroup
            ? _value.itemDiscountGroup
            : itemDiscountGroup // ignore: cast_nullable_to_non_nullable
                  as String,
        itemFocGroup: null == itemFocGroup
            ? _value.itemFocGroup
            : itemFocGroup // ignore: cast_nullable_to_non_nullable
                  as String,
        inventDimId: null == inventDimId
            ? _value.inventDimId
            : inventDimId // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        companyCode: null == companyCode
            ? _value.companyCode
            : companyCode // ignore: cast_nullable_to_non_nullable
                  as String,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as int,
        createAt: null == createAt
            ? _value.createAt
            : createAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDataImpl implements _ProductData {
  const _$ProductDataImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "productId") required this.productId,
    @JsonKey(name: "itemId") required this.itemId,
    @JsonKey(name: "productName") required this.productName,
    @JsonKey(name: "description") required this.description,
    @JsonKey(name: "category") required this.category,
    @JsonKey(name: "barcode") required this.barcode,
    @JsonKey(name: "itemGroup") required this.itemGroup,
    @JsonKey(name: "packSize") this.packSize,
    @JsonKey(name: "salesUnit") required this.salesUnit,
    @JsonKey(name: "unitPrice") required this.unitPrice,
    @JsonKey(name: "image") required this.image,
    @JsonKey(name: "itemDiscountGroup") required this.itemDiscountGroup,
    @JsonKey(name: "itemFOCGroup") required this.itemFocGroup,
    @JsonKey(name: "inventDimId") required this.inventDimId,
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "companyCode") required this.companyCode,
    @JsonKey(name: "companyId") required this.companyId,
    @JsonKey(name: "createAt") required this.createAt,
    @JsonKey(name: "updatedAt") required this.updatedAt,
  });

  factory _$ProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataImplFromJson(json);

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
  @JsonKey(name: "productName")
  final String productName;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "category")
  final String category;
  @override
  @JsonKey(name: "barcode")
  final String barcode;
  @override
  @JsonKey(name: "itemGroup")
  final String itemGroup;
  @override
  @JsonKey(name: "packSize")
  final String? packSize;
  @override
  @JsonKey(name: "salesUnit")
  final String salesUnit;
  @override
  @JsonKey(name: "unitPrice")
  final String unitPrice;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "itemDiscountGroup")
  final String itemDiscountGroup;
  @override
  @JsonKey(name: "itemFOCGroup")
  final String itemFocGroup;
  @override
  @JsonKey(name: "inventDimId")
  final String inventDimId;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "companyCode")
  final String companyCode;
  @override
  @JsonKey(name: "companyId")
  final int companyId;
  @override
  @JsonKey(name: "createAt")
  final DateTime createAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ProductData(id: $id, productId: $productId, itemId: $itemId, productName: $productName, description: $description, category: $category, barcode: $barcode, itemGroup: $itemGroup, packSize: $packSize, salesUnit: $salesUnit, unitPrice: $unitPrice, image: $image, itemDiscountGroup: $itemDiscountGroup, itemFocGroup: $itemFocGroup, inventDimId: $inventDimId, status: $status, companyCode: $companyCode, companyId: $companyId, createAt: $createAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.itemGroup, itemGroup) ||
                other.itemGroup == itemGroup) &&
            (identical(other.packSize, packSize) ||
                other.packSize == packSize) &&
            (identical(other.salesUnit, salesUnit) ||
                other.salesUnit == salesUnit) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.itemDiscountGroup, itemDiscountGroup) ||
                other.itemDiscountGroup == itemDiscountGroup) &&
            (identical(other.itemFocGroup, itemFocGroup) ||
                other.itemFocGroup == itemFocGroup) &&
            (identical(other.inventDimId, inventDimId) ||
                other.inventDimId == inventDimId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.companyCode, companyCode) ||
                other.companyCode == companyCode) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    productId,
    itemId,
    productName,
    description,
    category,
    barcode,
    itemGroup,
    packSize,
    salesUnit,
    unitPrice,
    image,
    itemDiscountGroup,
    itemFocGroup,
    inventDimId,
    status,
    companyCode,
    companyId,
    createAt,
    updatedAt,
  ]);

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      __$$ProductDataImplCopyWithImpl<_$ProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataImplToJson(this);
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData({
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "productId") required final String productId,
    @JsonKey(name: "itemId") required final String itemId,
    @JsonKey(name: "productName") required final String productName,
    @JsonKey(name: "description") required final String description,
    @JsonKey(name: "category") required final String category,
    @JsonKey(name: "barcode") required final String barcode,
    @JsonKey(name: "itemGroup") required final String itemGroup,
    @JsonKey(name: "packSize") final String? packSize,
    @JsonKey(name: "salesUnit") required final String salesUnit,
    @JsonKey(name: "unitPrice") required final String unitPrice,
    @JsonKey(name: "image") required final String image,
    @JsonKey(name: "itemDiscountGroup") required final String itemDiscountGroup,
    @JsonKey(name: "itemFOCGroup") required final String itemFocGroup,
    @JsonKey(name: "inventDimId") required final String inventDimId,
    @JsonKey(name: "status") required final String status,
    @JsonKey(name: "companyCode") required final String companyCode,
    @JsonKey(name: "companyId") required final int companyId,
    @JsonKey(name: "createAt") required final DateTime createAt,
    @JsonKey(name: "updatedAt") required final DateTime updatedAt,
  }) = _$ProductDataImpl;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductDataImpl.fromJson;

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
  @JsonKey(name: "productName")
  String get productName;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "category")
  String get category;
  @override
  @JsonKey(name: "barcode")
  String get barcode;
  @override
  @JsonKey(name: "itemGroup")
  String get itemGroup;
  @override
  @JsonKey(name: "packSize")
  String? get packSize;
  @override
  @JsonKey(name: "salesUnit")
  String get salesUnit;
  @override
  @JsonKey(name: "unitPrice")
  String get unitPrice;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "itemDiscountGroup")
  String get itemDiscountGroup;
  @override
  @JsonKey(name: "itemFOCGroup")
  String get itemFocGroup;
  @override
  @JsonKey(name: "inventDimId")
  String get inventDimId;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "companyCode")
  String get companyCode;
  @override
  @JsonKey(name: "companyId")
  int get companyId;
  @override
  @JsonKey(name: "createAt")
  DateTime get createAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
