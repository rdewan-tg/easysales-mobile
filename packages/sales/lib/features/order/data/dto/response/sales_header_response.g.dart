// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_header_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesHeaderResponse _$SalesHeaderResponseFromJson(Map<String, dynamic> json) =>
    _SalesHeaderResponse(
      status: json['status'] as String,
      data: SalesHeaderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SalesHeaderResponseToJson(
  _SalesHeaderResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_SalesHeaderData _$SalesHeaderDataFromJson(Map<String, dynamic> json) =>
    _SalesHeaderData(
      id: (json['id'] as num).toInt(),
      salesId: json['salesId'] as String,
      customerId: json['customerId'] as String,
      customerName: json['customerName'] as String,
      customerAddress: json['customerAddress'] as String,
      salesPersonId: json['salesPersonId'] as String,
      customerPriceGroup: json['customerPriceGroup'] as String,
      deliveryAddressLocation: json['deliveryAddressLocation'] as String,
      deliveryDate: json['deliveryDate'] as String,
      transactionDate: json['transactionDate'] as String,
      deviceId: json['deviceId'] as String,
      syncStatus: (json['syncStatus'] as num).toInt(),
      companyId: (json['companyId'] as num).toInt(),
    );

Map<String, dynamic> _$SalesHeaderDataToJson(_SalesHeaderData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'salesId': instance.salesId,
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'customerAddress': instance.customerAddress,
      'salesPersonId': instance.salesPersonId,
      'customerPriceGroup': instance.customerPriceGroup,
      'deliveryAddressLocation': instance.deliveryAddressLocation,
      'deliveryDate': instance.deliveryDate,
      'transactionDate': instance.transactionDate,
      'deviceId': instance.deviceId,
      'syncStatus': instance.syncStatus,
      'companyId': instance.companyId,
    };
