// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_site_visit_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateSiteVisitRequestImpl _$$CreateSiteVisitRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CreateSiteVisitRequestImpl(
  deviceId: json['deviceId'] as String,
  salesPersonCode: json['salesPersonCode'] as String,
  salesPersonName: json['salesPersonName'] as String,
  customerId: json['customerId'] as String,
  customerName: json['customerName'] as String,
  customerAddress: json['customerAddress'] as String,
  customerChain: json['customerChain'] as String,
  customerLatitude: (json['customerLatitude'] as num).toDouble(),
  customerLongitude: (json['customerLongitude'] as num).toDouble(),
  timeIn: json['timeIn'] as String,
  timeOut: json['timeOut'] as String?,
);

Map<String, dynamic> _$$CreateSiteVisitRequestImplToJson(
  _$CreateSiteVisitRequestImpl instance,
) => <String, dynamic>{
  'deviceId': instance.deviceId,
  'salesPersonCode': instance.salesPersonCode,
  'salesPersonName': instance.salesPersonName,
  'customerId': instance.customerId,
  'customerName': instance.customerName,
  'customerAddress': instance.customerAddress,
  'customerChain': instance.customerChain,
  'customerLatitude': instance.customerLatitude,
  'customerLongitude': instance.customerLongitude,
  'timeIn': instance.timeIn,
  'timeOut': instance.timeOut,
};
