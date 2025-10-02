// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_header_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesHeaderRequest _$SalesHeaderRequestFromJson(Map<String, dynamic> json) =>
    _SalesHeaderRequest(
      id: (json['id'] as num?)?.toInt(),
      salesId: json['salesId'] as String,
      customerId: json['customerId'] as String,
      customerName: json['customerName'] as String,
      customerAddress: json['customerAddress'] as String,
      salesPersonId: json['salesPersonId'] as String,
      customerRequisition: json['customerRequisition'] as String,
      customerPriceGroup: json['customerPriceGroup'] as String,
      note: json['note'] as String,
      deliveryAddressLocation: json['deliveryAddressLocation'] as String,
      deliveryDate: json['deliveryDate'] as String,
      transactionDate: json['transactionDate'] as String,
      deviceId: json['deviceId'] as String,
      syncStatus: (json['syncStatus'] as num).toInt(),
      companyId: (json['companyId'] as num).toInt(),
    );

Map<String, dynamic> _$SalesHeaderRequestToJson(_SalesHeaderRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'salesId': instance.salesId,
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'customerAddress': instance.customerAddress,
      'salesPersonId': instance.salesPersonId,
      'customerRequisition': instance.customerRequisition,
      'customerPriceGroup': instance.customerPriceGroup,
      'note': instance.note,
      'deliveryAddressLocation': instance.deliveryAddressLocation,
      'deliveryDate': instance.deliveryDate,
      'transactionDate': instance.transactionDate,
      'deviceId': instance.deviceId,
      'syncStatus': instance.syncStatus,
      'companyId': instance.companyId,
    };
