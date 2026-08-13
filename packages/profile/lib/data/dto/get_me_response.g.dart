// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_me_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetMeResponse _$GetMeResponseFromJson(Map<String, dynamic> json) =>
    _GetMeResponse(
      status: json['status'] as String,
      data: DataDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetMeResponseToJson(_GetMeResponse instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_DataDto _$DataDtoFromJson(Map<String, dynamic> json) => _DataDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String?,
  photo: json['photo'] as String?,
  dashboardPath: json['dashboardPath'] as String,
  roles: (json['roles'] as List<dynamic>)
      .map((e) => RoleDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  areaIds: (json['areaIds'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  company: MeCompanyDto.fromJson(json['company'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataDtoToJson(_DataDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'photo': instance.photo,
  'dashboardPath': instance.dashboardPath,
  'roles': instance.roles,
  'areaIds': instance.areaIds,
  'company': instance.company,
};

_RoleDto _$RoleDtoFromJson(Map<String, dynamic> json) => _RoleDto(
  id: (json['id'] as num).toInt(),
  name: $enumDecode(_$UserRoleEnumMap, json['name']),
);

Map<String, dynamic> _$RoleDtoToJson(_RoleDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': _$UserRoleEnumMap[instance.name]!,
};

const _$UserRoleEnumMap = {
  UserRole.superAdmin: 'SUPER_ADMIN',
  UserRole.admin: 'ADMIN',
  UserRole.manager: 'MANAGER',
  UserRole.sales: 'SALES',
  UserRole.merchandiser: 'MERCHANDISER',
  UserRole.supervisor: 'SUPERVISOR',
  UserRole.operator: 'OPERATOR',
  UserRole.user: 'USER',
  UserRole.guest: 'GUEST',
};

_MeCompanyDto _$MeCompanyDtoFromJson(Map<String, dynamic> json) =>
    _MeCompanyDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      timeZone: json['timeZone'] as String?,
    );

Map<String, dynamic> _$MeCompanyDtoToJson(_MeCompanyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'timeZone': instance.timeZone,
    };
