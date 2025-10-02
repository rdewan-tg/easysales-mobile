import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_line_response.freezed.dart';
part 'sales_line_response.g.dart';

@freezed
abstract class SalesLineResponse with _$SalesLineResponse {
  const factory SalesLineResponse({
    required String status,
    required SalesLineData data,
  }) = _SalesLineResponse;

  factory SalesLineResponse.fromJson(Map<String, dynamic> json) =>
      _$SalesLineResponseFromJson(json);
}

@freezed
abstract class SalesLineData with _$SalesLineData {
  const factory SalesLineData({required int count}) = _SalesLineData;

  factory SalesLineData.fromJson(Map<String, dynamic> json) =>
      _$SalesLineDataFromJson(json);
}
