// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_selling_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopSellingProductsResponse _$TopSellingProductsResponseFromJson(
  Map<String, dynamic> json,
) => _TopSellingProductsResponse(
  status: json['status'] as String,
  data: TopSellingProductsData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TopSellingProductsResponseToJson(
  _TopSellingProductsResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_TopSellingProductsData _$TopSellingProductsDataFromJson(
  Map<String, dynamic> json,
) => _TopSellingProductsData(
  maxY: json['maxY'] as num,
  labels: (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
  points: (json['points'] as List<dynamic>)
      .map(
        (e) =>
            TopSellingProductChartPointData.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$TopSellingProductsDataToJson(
  _TopSellingProductsData instance,
) => <String, dynamic>{
  'maxY': instance.maxY,
  'labels': instance.labels,
  'points': instance.points,
};

_TopSellingProductChartPointData _$TopSellingProductChartPointDataFromJson(
  Map<String, dynamic> json,
) => _TopSellingProductChartPointData(
  x: (json['x'] as num).toInt(),
  y: json['y'] as num,
  productId: json['productId'] as String,
  productName: json['productName'] as String,
  totalSalesAmount: json['totalSalesAmount'] as num,
);

Map<String, dynamic> _$TopSellingProductChartPointDataToJson(
  _TopSellingProductChartPointData instance,
) => <String, dynamic>{
  'x': instance.x,
  'y': instance.y,
  'productId': instance.productId,
  'productName': instance.productName,
  'totalSalesAmount': instance.totalSalesAmount,
};
