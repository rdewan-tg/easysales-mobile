// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_customers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopCustomersResponse _$TopCustomersResponseFromJson(
  Map<String, dynamic> json,
) => _TopCustomersResponse(
  status: json['status'] as String,
  data: TopCustomersData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TopCustomersResponseToJson(
  _TopCustomersResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_TopCustomersData _$TopCustomersDataFromJson(
  Map<String, dynamic> json,
) => _TopCustomersData(
  maxY: (json['maxY'] as num).toDouble(),
  labels: (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
  points: (json['points'] as List<dynamic>)
      .map((e) => TopCustomerChartPointData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TopCustomersDataToJson(_TopCustomersData instance) =>
    <String, dynamic>{
      'maxY': instance.maxY,
      'labels': instance.labels,
      'points': instance.points,
    };

_TopCustomerChartPointData _$TopCustomerChartPointDataFromJson(
  Map<String, dynamic> json,
) => _TopCustomerChartPointData(
  x: (json['x'] as num).toInt(),
  y: (json['y'] as num).toDouble(),
  customerId: json['customerId'] as String,
  customerName: json['customerName'] as String,
  totalQuantitySold: json['totalQuantitySold'] as num,
);

Map<String, dynamic> _$TopCustomerChartPointDataToJson(
  _TopCustomerChartPointData instance,
) => <String, dynamic>{
  'x': instance.x,
  'y': instance.y,
  'customerId': instance.customerId,
  'customerName': instance.customerName,
  'totalQuantitySold': instance.totalQuantitySold,
};
