// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_price_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductPriceResponse _$ProductPriceResponseFromJson(
  Map<String, dynamic> json,
) => _ProductPriceResponse(
  status: json['status'] as String,
  total: (json['total'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => ProductPriceData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductPriceResponseToJson(
  _ProductPriceResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'total': instance.total,
  'data': instance.data,
};

_ProductPriceData _$ProductPriceDataFromJson(Map<String, dynamic> json) =>
    _ProductPriceData(
      id: (json['id'] as num).toInt(),
      productId: json['productId'] as String,
      itemId: json['itemId'] as String,
      packSize: json['packSize'] as String?,
      fromDate: DateTime.parse(json['fromDate'] as String),
      toDate: DateTime.parse(json['toDate'] as String),
      unitPrice: json['unitPrice'] as String,
      currencyCode: json['currencyCode'] as String,
      salesUnit: json['salesUnit'] as String,
      priceGroup: json['priceGroup'] as String,
      recId: json['recId'] as String,
      companyId: (json['companyId'] as num).toInt(),
      companyCode: json['companyCode'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ProductPriceDataToJson(_ProductPriceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'itemId': instance.itemId,
      'packSize': instance.packSize,
      'fromDate': instance.fromDate.toIso8601String(),
      'toDate': instance.toDate.toIso8601String(),
      'unitPrice': instance.unitPrice,
      'currencyCode': instance.currencyCode,
      'salesUnit': instance.salesUnit,
      'priceGroup': instance.priceGroup,
      'recId': instance.recId,
      'companyId': instance.companyId,
      'companyCode': instance.companyCode,
      'createAt': instance.createAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
