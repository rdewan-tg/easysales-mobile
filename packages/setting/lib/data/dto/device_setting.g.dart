// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceSettingResponseImpl _$$DeviceSettingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceSettingResponseImpl(
      status: json['status'] as String,
      data: DeviceSettingData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeviceSettingResponseImplToJson(
        _$DeviceSettingResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DeviceSettingDataImpl _$$DeviceSettingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceSettingDataImpl(
      id: (json['id'] as num).toInt(),
      deviceId: json['deviceId'] as String,
      userId: (json['userId'] as num).toInt(),
      userName: json['userName'] as String,
      salesPersonCode: json['salesPersonCode'] as String,
      orderNumberFormat: json['orderNumberFormat'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      companyId: (json['companyId'] as num).toInt(),
    );

Map<String, dynamic> _$$DeviceSettingDataImplToJson(
        _$DeviceSettingDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'userId': instance.userId,
      'userName': instance.userName,
      'salesPersonCode': instance.salesPersonCode,
      'orderNumberFormat': instance.orderNumberFormat,
      'createAt': instance.createAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'companyId': instance.companyId,
    };
