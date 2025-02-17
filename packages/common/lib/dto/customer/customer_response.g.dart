// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerResponseImpl _$$CustomerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerResponseImpl(
      status: json['status'] as String,
      total: (json['total'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => CustomerData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomerResponseImplToJson(
        _$CustomerResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total': instance.total,
      'data': instance.data,
    };

_$CustomerDataImpl _$$CustomerDataImplFromJson(Map<String, dynamic> json) =>
    _$CustomerDataImpl(
      id: (json['id'] as num).toInt(),
      customerId: json['customerId'] as String,
      customerName: json['customerName'] as String,
      address: json['address'] as String,
      salesPersonId: json['salesPersonId'] as String,
      salesPerson: json['salesPerson'] as String?,
      merchandiser: json['merchandiser'] as String?,
      countryId: json['countryId'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      creditLimit:
          const StringToDoubleConverter().fromJson(json['creditLimit']),
      currencyCode: json['currencyCode'] as String?,
      paymentTerm: json['paymentTerm'] as String?,
      priceGroup: json['priceGroup'] as String?,
      customreDimension: json['customreDimension'] as String?,
      status: (json['status'] as num).toInt(),
      companyId: (json['companyId'] as num).toInt(),
      companyCode: json['companyCode'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CustomerDataImplToJson(_$CustomerDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'address': instance.address,
      'salesPersonId': instance.salesPersonId,
      'salesPerson': instance.salesPerson,
      'merchandiser': instance.merchandiser,
      'countryId': instance.countryId,
      'phoneNumber': instance.phoneNumber,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'creditLimit':
          const StringToDoubleConverter().toJson(instance.creditLimit),
      'currencyCode': instance.currencyCode,
      'paymentTerm': instance.paymentTerm,
      'priceGroup': instance.priceGroup,
      'customreDimension': instance.customreDimension,
      'status': instance.status,
      'companyId': instance.companyId,
      'companyCode': instance.companyCode,
      'createAt': instance.createAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
