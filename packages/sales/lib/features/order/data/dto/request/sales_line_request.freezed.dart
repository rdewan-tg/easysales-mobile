// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_line_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SalesLineRequest _$SalesLineRequestFromJson(Map<String, dynamic> json) {
  return _SalesLineRequest.fromJson(json);
}

/// @nodoc
mixin _$SalesLineRequest {
  int? get id => throw _privateConstructorUsedError;
  String get salesId => throw _privateConstructorUsedError;
  int get lineId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  String get packSize => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get salesUnit => throw _privateConstructorUsedError;
  double get salesPrice => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  double get lineAmount => throw _privateConstructorUsedError;
  String get inventDimId => throw _privateConstructorUsedError;
  String get transactionDate => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  int get syncStatus => throw _privateConstructorUsedError;
  int get companyId => throw _privateConstructorUsedError;

  /// Serializes this SalesLineRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesLineRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesLineRequestCopyWith<SalesLineRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesLineRequestCopyWith<$Res> {
  factory $SalesLineRequestCopyWith(
    SalesLineRequest value,
    $Res Function(SalesLineRequest) then,
  ) = _$SalesLineRequestCopyWithImpl<$Res, SalesLineRequest>;
  @useResult
  $Res call({
    int? id,
    String salesId,
    int lineId,
    String itemId,
    String productId,
    String productName,
    String productDescription,
    String packSize,
    double quantity,
    String salesUnit,
    double salesPrice,
    double taxAmount,
    double lineAmount,
    String inventDimId,
    String transactionDate,
    String deviceId,
    int syncStatus,
    int companyId,
  });
}

/// @nodoc
class _$SalesLineRequestCopyWithImpl<$Res, $Val extends SalesLineRequest>
    implements $SalesLineRequestCopyWith<$Res> {
  _$SalesLineRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesLineRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesId = null,
    Object? lineId = null,
    Object? itemId = null,
    Object? productId = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? packSize = null,
    Object? quantity = null,
    Object? salesUnit = null,
    Object? salesPrice = null,
    Object? taxAmount = null,
    Object? lineAmount = null,
    Object? inventDimId = null,
    Object? transactionDate = null,
    Object? deviceId = null,
    Object? syncStatus = null,
    Object? companyId = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            salesId: null == salesId
                ? _value.salesId
                : salesId // ignore: cast_nullable_to_non_nullable
                      as String,
            lineId: null == lineId
                ? _value.lineId
                : lineId // ignore: cast_nullable_to_non_nullable
                      as int,
            itemId: null == itemId
                ? _value.itemId
                : itemId // ignore: cast_nullable_to_non_nullable
                      as String,
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as String,
            productName: null == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                      as String,
            productDescription: null == productDescription
                ? _value.productDescription
                : productDescription // ignore: cast_nullable_to_non_nullable
                      as String,
            packSize: null == packSize
                ? _value.packSize
                : packSize // ignore: cast_nullable_to_non_nullable
                      as String,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as double,
            salesUnit: null == salesUnit
                ? _value.salesUnit
                : salesUnit // ignore: cast_nullable_to_non_nullable
                      as String,
            salesPrice: null == salesPrice
                ? _value.salesPrice
                : salesPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            taxAmount: null == taxAmount
                ? _value.taxAmount
                : taxAmount // ignore: cast_nullable_to_non_nullable
                      as double,
            lineAmount: null == lineAmount
                ? _value.lineAmount
                : lineAmount // ignore: cast_nullable_to_non_nullable
                      as double,
            inventDimId: null == inventDimId
                ? _value.inventDimId
                : inventDimId // ignore: cast_nullable_to_non_nullable
                      as String,
            transactionDate: null == transactionDate
                ? _value.transactionDate
                : transactionDate // ignore: cast_nullable_to_non_nullable
                      as String,
            deviceId: null == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            syncStatus: null == syncStatus
                ? _value.syncStatus
                : syncStatus // ignore: cast_nullable_to_non_nullable
                      as int,
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SalesLineRequestImplCopyWith<$Res>
    implements $SalesLineRequestCopyWith<$Res> {
  factory _$$SalesLineRequestImplCopyWith(
    _$SalesLineRequestImpl value,
    $Res Function(_$SalesLineRequestImpl) then,
  ) = __$$SalesLineRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String salesId,
    int lineId,
    String itemId,
    String productId,
    String productName,
    String productDescription,
    String packSize,
    double quantity,
    String salesUnit,
    double salesPrice,
    double taxAmount,
    double lineAmount,
    String inventDimId,
    String transactionDate,
    String deviceId,
    int syncStatus,
    int companyId,
  });
}

/// @nodoc
class __$$SalesLineRequestImplCopyWithImpl<$Res>
    extends _$SalesLineRequestCopyWithImpl<$Res, _$SalesLineRequestImpl>
    implements _$$SalesLineRequestImplCopyWith<$Res> {
  __$$SalesLineRequestImplCopyWithImpl(
    _$SalesLineRequestImpl _value,
    $Res Function(_$SalesLineRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalesLineRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesId = null,
    Object? lineId = null,
    Object? itemId = null,
    Object? productId = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? packSize = null,
    Object? quantity = null,
    Object? salesUnit = null,
    Object? salesPrice = null,
    Object? taxAmount = null,
    Object? lineAmount = null,
    Object? inventDimId = null,
    Object? transactionDate = null,
    Object? deviceId = null,
    Object? syncStatus = null,
    Object? companyId = null,
  }) {
    return _then(
      _$SalesLineRequestImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        salesId: null == salesId
            ? _value.salesId
            : salesId // ignore: cast_nullable_to_non_nullable
                  as String,
        lineId: null == lineId
            ? _value.lineId
            : lineId // ignore: cast_nullable_to_non_nullable
                  as int,
        itemId: null == itemId
            ? _value.itemId
            : itemId // ignore: cast_nullable_to_non_nullable
                  as String,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String,
        productName: null == productName
            ? _value.productName
            : productName // ignore: cast_nullable_to_non_nullable
                  as String,
        productDescription: null == productDescription
            ? _value.productDescription
            : productDescription // ignore: cast_nullable_to_non_nullable
                  as String,
        packSize: null == packSize
            ? _value.packSize
            : packSize // ignore: cast_nullable_to_non_nullable
                  as String,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as double,
        salesUnit: null == salesUnit
            ? _value.salesUnit
            : salesUnit // ignore: cast_nullable_to_non_nullable
                  as String,
        salesPrice: null == salesPrice
            ? _value.salesPrice
            : salesPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        taxAmount: null == taxAmount
            ? _value.taxAmount
            : taxAmount // ignore: cast_nullable_to_non_nullable
                  as double,
        lineAmount: null == lineAmount
            ? _value.lineAmount
            : lineAmount // ignore: cast_nullable_to_non_nullable
                  as double,
        inventDimId: null == inventDimId
            ? _value.inventDimId
            : inventDimId // ignore: cast_nullable_to_non_nullable
                  as String,
        transactionDate: null == transactionDate
            ? _value.transactionDate
            : transactionDate // ignore: cast_nullable_to_non_nullable
                  as String,
        deviceId: null == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        syncStatus: null == syncStatus
            ? _value.syncStatus
            : syncStatus // ignore: cast_nullable_to_non_nullable
                  as int,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesLineRequestImpl implements _SalesLineRequest {
  _$SalesLineRequestImpl({
    this.id,
    required this.salesId,
    required this.lineId,
    required this.itemId,
    required this.productId,
    required this.productName,
    required this.productDescription,
    required this.packSize,
    required this.quantity,
    required this.salesUnit,
    required this.salesPrice,
    required this.taxAmount,
    required this.lineAmount,
    required this.inventDimId,
    required this.transactionDate,
    required this.deviceId,
    required this.syncStatus,
    required this.companyId,
  });

  factory _$SalesLineRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesLineRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final String salesId;
  @override
  final int lineId;
  @override
  final String itemId;
  @override
  final String productId;
  @override
  final String productName;
  @override
  final String productDescription;
  @override
  final String packSize;
  @override
  final double quantity;
  @override
  final String salesUnit;
  @override
  final double salesPrice;
  @override
  final double taxAmount;
  @override
  final double lineAmount;
  @override
  final String inventDimId;
  @override
  final String transactionDate;
  @override
  final String deviceId;
  @override
  final int syncStatus;
  @override
  final int companyId;

  @override
  String toString() {
    return 'SalesLineRequest(id: $id, salesId: $salesId, lineId: $lineId, itemId: $itemId, productId: $productId, productName: $productName, productDescription: $productDescription, packSize: $packSize, quantity: $quantity, salesUnit: $salesUnit, salesPrice: $salesPrice, taxAmount: $taxAmount, lineAmount: $lineAmount, inventDimId: $inventDimId, transactionDate: $transactionDate, deviceId: $deviceId, syncStatus: $syncStatus, companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesLineRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salesId, salesId) || other.salesId == salesId) &&
            (identical(other.lineId, lineId) || other.lineId == lineId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.packSize, packSize) ||
                other.packSize == packSize) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.salesUnit, salesUnit) ||
                other.salesUnit == salesUnit) &&
            (identical(other.salesPrice, salesPrice) ||
                other.salesPrice == salesPrice) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.lineAmount, lineAmount) ||
                other.lineAmount == lineAmount) &&
            (identical(other.inventDimId, inventDimId) ||
                other.inventDimId == inventDimId) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.syncStatus, syncStatus) ||
                other.syncStatus == syncStatus) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    salesId,
    lineId,
    itemId,
    productId,
    productName,
    productDescription,
    packSize,
    quantity,
    salesUnit,
    salesPrice,
    taxAmount,
    lineAmount,
    inventDimId,
    transactionDate,
    deviceId,
    syncStatus,
    companyId,
  );

  /// Create a copy of SalesLineRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesLineRequestImplCopyWith<_$SalesLineRequestImpl> get copyWith =>
      __$$SalesLineRequestImplCopyWithImpl<_$SalesLineRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesLineRequestImplToJson(this);
  }
}

abstract class _SalesLineRequest implements SalesLineRequest {
  factory _SalesLineRequest({
    final int? id,
    required final String salesId,
    required final int lineId,
    required final String itemId,
    required final String productId,
    required final String productName,
    required final String productDescription,
    required final String packSize,
    required final double quantity,
    required final String salesUnit,
    required final double salesPrice,
    required final double taxAmount,
    required final double lineAmount,
    required final String inventDimId,
    required final String transactionDate,
    required final String deviceId,
    required final int syncStatus,
    required final int companyId,
  }) = _$SalesLineRequestImpl;

  factory _SalesLineRequest.fromJson(Map<String, dynamic> json) =
      _$SalesLineRequestImpl.fromJson;

  @override
  int? get id;
  @override
  String get salesId;
  @override
  int get lineId;
  @override
  String get itemId;
  @override
  String get productId;
  @override
  String get productName;
  @override
  String get productDescription;
  @override
  String get packSize;
  @override
  double get quantity;
  @override
  String get salesUnit;
  @override
  double get salesPrice;
  @override
  double get taxAmount;
  @override
  double get lineAmount;
  @override
  String get inventDimId;
  @override
  String get transactionDate;
  @override
  String get deviceId;
  @override
  int get syncStatus;
  @override
  int get companyId;

  /// Create a copy of SalesLineRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesLineRequestImplCopyWith<_$SalesLineRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
