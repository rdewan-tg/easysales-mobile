// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_line_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesLineRequest _$SalesLineRequestFromJson(Map<String, dynamic> json) =>
    _SalesLineRequest(
      id: (json['id'] as num?)?.toInt(),
      salesId: json['salesId'] as String,
      lineId: (json['lineId'] as num).toInt(),
      itemId: json['itemId'] as String,
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      productDescription: json['productDescription'] as String,
      packSize: json['packSize'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      salesUnit: json['salesUnit'] as String,
      salesPrice: (json['salesPrice'] as num).toDouble(),
      taxAmount: (json['taxAmount'] as num).toDouble(),
      lineAmount: (json['lineAmount'] as num).toDouble(),
      inventDimId: json['inventDimId'] as String,
      transactionDate: json['transactionDate'] as String,
      deviceId: json['deviceId'] as String,
      syncStatus: (json['syncStatus'] as num).toInt(),
      companyId: (json['companyId'] as num).toInt(),
    );

Map<String, dynamic> _$SalesLineRequestToJson(_SalesLineRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'salesId': instance.salesId,
      'lineId': instance.lineId,
      'itemId': instance.itemId,
      'productId': instance.productId,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'packSize': instance.packSize,
      'quantity': instance.quantity,
      'salesUnit': instance.salesUnit,
      'salesPrice': instance.salesPrice,
      'taxAmount': instance.taxAmount,
      'lineAmount': instance.lineAmount,
      'inventDimId': instance.inventDimId,
      'transactionDate': instance.transactionDate,
      'deviceId': instance.deviceId,
      'syncStatus': instance.syncStatus,
      'companyId': instance.companyId,
    };
