import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_selling_products_response.freezed.dart';
part 'top_selling_products_response.g.dart';

TopSellingProductsResponse deserializeTopSellingProductsResponse(
  Map<String, dynamic> json,
) => TopSellingProductsResponse.fromJson(json);

@freezed
abstract class TopSellingProductsResponse with _$TopSellingProductsResponse {
  const factory TopSellingProductsResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'data') required TopSellingProductsData data,
  }) = _TopSellingProductsResponse;

  factory TopSellingProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$TopSellingProductsResponseFromJson(json);
}

@freezed
abstract class TopSellingProductsData with _$TopSellingProductsData {
  const factory TopSellingProductsData({
    @JsonKey(name: 'maxY') required num maxY,
    @JsonKey(name: 'labels') required List<String> labels,
    @JsonKey(name: 'points') required List<TopSellingProductChartPointData> points,
  }) = _TopSellingProductsData;

  factory TopSellingProductsData.fromJson(Map<String, dynamic> json) =>
      _$TopSellingProductsDataFromJson(json);
}

@freezed
abstract class TopSellingProductChartPointData with _$TopSellingProductChartPointData {
  const factory TopSellingProductChartPointData({
    @JsonKey(name: 'x') required int x,
    @JsonKey(name: 'y') required num y,
    @JsonKey(name: 'productId') required String productId,
    @JsonKey(name: 'productName') required String productName,
    @JsonKey(name: 'totalSalesAmount') required num totalSalesAmount,
  }) = _TopSellingProductChartPointData;

  factory TopSellingProductChartPointData.fromJson(Map<String, dynamic> json) =>
      _$TopSellingProductChartPointDataFromJson(json);
}
