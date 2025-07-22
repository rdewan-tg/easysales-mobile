// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      status: json['status'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
  token: TokenDto.fromJson(json['token'] as Map<String, dynamic>),
  user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{'token': instance.token, 'user': instance.user};

_$TokenDtoImpl _$$TokenDtoImplFromJson(Map<String, dynamic> json) =>
    _$TokenDtoImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$TokenDtoImplToJson(_$TokenDtoImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      photo: json['photo'] as String?,
      role: (json['role'] as List<dynamic>)
          .map((e) => RoleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      company: CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
      deviceSetting: DeviceSettingDto.fromJson(
        json['deviceSetting'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'photo': instance.photo,
      'role': instance.role,
      'company': instance.company,
      'deviceSetting': instance.deviceSetting,
    };

_$RoleDtoImpl _$$RoleDtoImplFromJson(Map<String, dynamic> json) =>
    _$RoleDtoImpl(
      id: (json['id'] as num).toInt(),
      name: $enumDecode(_$UserRoleEnumMap, json['name']),
    );

Map<String, dynamic> _$$RoleDtoImplToJson(_$RoleDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': _$UserRoleEnumMap[instance.name]!,
    };

const _$UserRoleEnumMap = {
  UserRole.superAdmin: 'superAdmin',
  UserRole.admin: 'admin',
  UserRole.manager: 'manager',
  UserRole.supervisor: 'supervisor',
  UserRole.operator: 'operator',
  UserRole.user: 'user',
};

_$CompanyDtoImpl _$$CompanyDtoImplFromJson(Map<String, dynamic> json) =>
    _$CompanyDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      companyCode: json['companyCode'] as String?,
      countryCode: json['countryCode'] as String?,
      timeZone: json['timeZone'] as String,
      isSiteVisitEnabled: json['isSiteVisitEnabled'] as bool,
    );

Map<String, dynamic> _$$CompanyDtoImplToJson(_$CompanyDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'companyCode': instance.companyCode,
      'countryCode': instance.countryCode,
      'timeZone': instance.timeZone,
      'isSiteVisitEnabled': instance.isSiteVisitEnabled,
    };

_$DeviceSettingDtoImpl _$$DeviceSettingDtoImplFromJson(
  Map<String, dynamic> json,
) => _$DeviceSettingDtoImpl(
  deviceId: json['deviceId'] as String?,
  salesPersonCode: json['salesPersonCode'] as String?,
  orderNumberFormat: json['orderNumberFormat'] as String?,
);

Map<String, dynamic> _$$DeviceSettingDtoImplToJson(
  _$DeviceSettingDtoImpl instance,
) => <String, dynamic>{
  'deviceId': instance.deviceId,
  'salesPersonCode': instance.salesPersonCode,
  'orderNumberFormat': instance.orderNumberFormat,
};
