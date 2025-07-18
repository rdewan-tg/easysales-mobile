// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerAddressResponseImpl _$$CustomerAddressResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerAddressResponseImpl(
  status: json['status'] as String,
  total: (json['total'] as num).toInt(),
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => CustomerAddressData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <CustomerAddressData>[],
);

Map<String, dynamic> _$$CustomerAddressResponseImplToJson(
  _$CustomerAddressResponseImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'total': instance.total,
  'data': instance.data,
};

_$CustomerAddressDataImpl _$$CustomerAddressDataImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerAddressDataImpl(
  id: (json['id'] as num).toInt(),
  customerId: json['customerId'] as String,
  address: json['address'] as String?,
  salesPersonId: json['salesPersonId'] as String?,
  latitude: json['latitude'] as String,
  longitude: json['longitude'] as String,
  deliveryName: json['deliveryName'] as String?,
  postalAddress: json['postalAddress'] as String,
  location: json['location'] as String,
  isPrimary: json['isPrimary'] as bool,
  companyId: (json['companyId'] as num).toInt(),
  companyCode: json['companyCode'] as String,
  createAt: DateTime.parse(json['createAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$CustomerAddressDataImplToJson(
  _$CustomerAddressDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'customerId': instance.customerId,
  'address': instance.address,
  'salesPersonId': instance.salesPersonId,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'deliveryName': instance.deliveryName,
  'postalAddress': instance.postalAddress,
  'location': instance.location,
  'isPrimary': instance.isPrimary,
  'companyId': instance.companyId,
  'companyCode': instance.companyCode,
  'createAt': instance.createAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
