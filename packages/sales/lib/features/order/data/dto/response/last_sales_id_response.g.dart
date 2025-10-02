// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_sales_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastSalesIdResponse _$LastSalesIdResponseFromJson(Map<String, dynamic> json) =>
    _LastSalesIdResponse(
      status: json['status'] as String,
      data: (json['data'] as num).toInt(),
    );

Map<String, dynamic> _$LastSalesIdResponseToJson(
  _LastSalesIdResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};
