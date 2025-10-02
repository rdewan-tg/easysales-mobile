// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanySettingResponse _$CompanySettingResponseFromJson(
  Map<String, dynamic> json,
) => _CompanySettingResponse(
  status: json['status'] as String,
  data: CompanySettingDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CompanySettingResponseToJson(
  _CompanySettingResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_CompanySettingDto _$CompanySettingDtoFromJson(Map<String, dynamic> json) =>
    _CompanySettingDto(
      id: (json['id'] as num).toInt(),
      companyId: (json['companyId'] as num).toInt(),
      timeZone: json['timeZone'] as String,
      isSiteVisitEnabled: json['isSiteVisitEnabled'] as bool,
    );

Map<String, dynamic> _$CompanySettingDtoToJson(_CompanySettingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'timeZone': instance.timeZone,
      'isSiteVisitEnabled': instance.isSiteVisitEnabled,
    };
