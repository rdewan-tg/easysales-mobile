// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      status: json['status'] as String,
      total: (json['total'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => ProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total': instance.total,
      'data': instance.data,
    };

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      id: (json['id'] as num).toInt(),
      productId: json['productId'] as String,
      itemId: json['itemId'] as String,
      productName: json['productName'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      barcode: json['barcode'] as String,
      itemGroup: json['itemGroup'] as String,
      packSize: json['packSize'] as String?,
      salesUnit: json['salesUnit'] as String,
      unitPrice: json['unitPrice'] as String,
      image: json['image'] as String,
      itemDiscountGroup: json['itemDiscountGroup'] as String,
      itemFocGroup: json['itemFOCGroup'] as String,
      inventDimId: json['inventDimId'] as String,
      status: json['status'] as String,
      companyCode: json['companyCode'] as String,
      companyId: (json['companyId'] as num).toInt(),
      createAt: DateTime.parse(json['createAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'itemId': instance.itemId,
      'productName': instance.productName,
      'description': instance.description,
      'category': instance.category,
      'barcode': instance.barcode,
      'itemGroup': instance.itemGroup,
      'packSize': instance.packSize,
      'salesUnit': instance.salesUnit,
      'unitPrice': instance.unitPrice,
      'image': instance.image,
      'itemDiscountGroup': instance.itemDiscountGroup,
      'itemFOCGroup': instance.itemFocGroup,
      'inventDimId': instance.inventDimId,
      'status': instance.status,
      'companyCode': instance.companyCode,
      'companyId': instance.companyId,
      'createAt': instance.createAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
