// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_line_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesLineResponse _$SalesLineResponseFromJson(Map<String, dynamic> json) =>
    _SalesLineResponse(
      status: json['status'] as String,
      data: SalesLineData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SalesLineResponseToJson(_SalesLineResponse instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_SalesLineData _$SalesLineDataFromJson(Map<String, dynamic> json) =>
    _SalesLineData(count: (json['count'] as num).toInt());

Map<String, dynamic> _$SalesLineDataToJson(_SalesLineData instance) =>
    <String, dynamic>{'count': instance.count};
