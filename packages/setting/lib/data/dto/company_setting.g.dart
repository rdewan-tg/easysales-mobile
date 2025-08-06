// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanySettingResponseImpl _$$CompanySettingResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CompanySettingResponseImpl(
  status: json['status'] as String,
  data: CompanySettingDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CompanySettingResponseImplToJson(
  _$CompanySettingResponseImpl instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_$CompanySettingDtoImpl _$$CompanySettingDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CompanySettingDtoImpl(
  id: (json['id'] as num).toInt(),
  companyId: (json['companyId'] as num).toInt(),
  timeZone: json['timeZone'] as String,
  isSiteVisitEnabled: json['isSiteVisitEnabled'] as bool,
);

Map<String, dynamic> _$$CompanySettingDtoImplToJson(
  _$CompanySettingDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'companyId': instance.companyId,
  'timeZone': instance.timeZone,
  'isSiteVisitEnabled': instance.isSiteVisitEnabled,
};
