// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_site_visit_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateSiteVisitRequest _$UpdateSiteVisitRequestFromJson(
  Map<String, dynamic> json,
) => _UpdateSiteVisitRequest(
  id: (json['id'] as num).toInt(),
  timeOut: json['timeOut'] as String,
);

Map<String, dynamic> _$UpdateSiteVisitRequestToJson(
  _UpdateSiteVisitRequest instance,
) => <String, dynamic>{'id': instance.id, 'timeOut': instance.timeOut};
