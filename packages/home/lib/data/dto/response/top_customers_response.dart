import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_customers_response.freezed.dart';
part 'top_customers_response.g.dart';

TopCustomersResponse deserializeTopCustomersResponse(
  Map<String, dynamic> json,
) => TopCustomersResponse.fromJson(json);

@freezed
abstract class TopCustomersResponse with _$TopCustomersResponse {
  const factory TopCustomersResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'data') required TopCustomersData data,
  }) = _TopCustomersResponse;

  factory TopCustomersResponse.fromJson(Map<String, dynamic> json) =>
      _$TopCustomersResponseFromJson(json);
}

@freezed
abstract class TopCustomersData with _$TopCustomersData {
  const factory TopCustomersData({
    @JsonKey(name: 'maxY') required double maxY,
    @JsonKey(name: 'labels') required List<String> labels,
    @JsonKey(name: 'points') required List<TopCustomerChartPointData> points,
  }) = _TopCustomersData;

  factory TopCustomersData.fromJson(Map<String, dynamic> json) =>
      _$TopCustomersDataFromJson(json);
}

@freezed
abstract class TopCustomerChartPointData with _$TopCustomerChartPointData {
  const factory TopCustomerChartPointData({
    @JsonKey(name: 'x') required int x,
    @JsonKey(name: 'y') required double y,
    @JsonKey(name: 'customerId') required String customerId,
    @JsonKey(name: 'customerName') required String customerName,
    @JsonKey(name: 'totalQuantitySold') required num totalQuantitySold,
  }) = _TopCustomerChartPointData;

  factory TopCustomerChartPointData.fromJson(Map<String, dynamic> json) =>
      _$TopCustomerChartPointDataFromJson(json);
}
