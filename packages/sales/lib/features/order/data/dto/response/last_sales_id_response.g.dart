// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_sales_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastSalesIdResponseImpl _$$LastSalesIdResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LastSalesIdResponseImpl(
      status: json['status'] as String,
      data: (json['data'] as num).toInt(),
    );

Map<String, dynamic> _$$LastSalesIdResponseImplToJson(
        _$LastSalesIdResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
