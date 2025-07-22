// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_visit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiteVisitResponseImpl _$$SiteVisitResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SiteVisitResponseImpl(
  status: json['status'] as String,
  data: SiteVisitData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$SiteVisitResponseImplToJson(
  _$SiteVisitResponseImpl instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_$SiteVisitDataImpl _$$SiteVisitDataImplFromJson(Map<String, dynamic> json) =>
    _$SiteVisitDataImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      deviceId: json['deviceId'] as String,
      salesPersonCode: json['salesPersonCode'] as String,
      salesPersonName: json['salesPersonName'] as String,
      customerId: json['customerId'] as String,
      customerName: json['customerName'] as String,
      customerAddress: json['customerAddress'] as String,
      customerChain: json['customerChain'] as String,
      customerLatitude: json['customerLatitude'] as String,
      customerLongitude: json['customerLongitude'] as String,
      timeIn: json['timeIn'] as String,
      timeOut: json['timeOut'] as String?,
      durationInOutlet: (json['durationInOutlet'] as num).toInt(),
      areaIds:
          (json['areaIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      companyId: (json['companyId'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$SiteVisitDataImplToJson(_$SiteVisitDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
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
      'durationInOutlet': instance.durationInOutlet,
      'areaIds': instance.areaIds,
      'companyId': instance.companyId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
