import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_3_months_sales_totals_response.freezed.dart';
part 'last_3_months_sales_totals_response.g.dart';

Last3MonthsSalesTotalsResponse deserializeLast3MonthsSalesTotalsResponse(
  Map<String, dynamic> json,
) => Last3MonthsSalesTotalsResponse.fromJson(json);

@freezed
abstract class Last3MonthsSalesTotalsResponse
    with _$Last3MonthsSalesTotalsResponse {
  const factory Last3MonthsSalesTotalsResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'data') required Last3MonthsSalesTotalsData data,
  }) = _Last3MonthsSalesTotalsResponse;

  factory Last3MonthsSalesTotalsResponse.fromJson(Map<String, dynamic> json) =>
      _$Last3MonthsSalesTotalsResponseFromJson(json);
}

@freezed
abstract class Last3MonthsSalesTotalsData with _$Last3MonthsSalesTotalsData {
  const factory Last3MonthsSalesTotalsData({
    @JsonKey(name: 'maxY') required num maxY,
    @JsonKey(name: 'labels') required List<String> labels,
    @JsonKey(name: 'points') required List<MonthlySalesTotalPointData> points,
  }) = _Last3MonthsSalesTotalsData;

  factory Last3MonthsSalesTotalsData.fromJson(Map<String, dynamic> json) =>
      _$Last3MonthsSalesTotalsDataFromJson(json);
}

@freezed
abstract class MonthlySalesTotalPointData with _$MonthlySalesTotalPointData {
  const factory MonthlySalesTotalPointData({
    @JsonKey(name: 'x') required int x,
    @JsonKey(name: 'y') required num y,
    @JsonKey(name: 'label') required String label,
    @JsonKey(name: 'totalQuantitySold') required num totalQuantitySold,
  }) = _MonthlySalesTotalPointData;

  factory MonthlySalesTotalPointData.fromJson(Map<String, dynamic> json) =>
      _$MonthlySalesTotalPointDataFromJson(json);
}
