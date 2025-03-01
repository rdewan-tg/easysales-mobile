// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_line_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesLineResponseImpl _$$SalesLineResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SalesLineResponseImpl(
      status: json['status'] as String,
      data: SalesLineData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SalesLineResponseImplToJson(
        _$SalesLineResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$SalesLineDataImpl _$$SalesLineDataImplFromJson(Map<String, dynamic> json) =>
    _$SalesLineDataImpl(
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$SalesLineDataImplToJson(_$SalesLineDataImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
    };
