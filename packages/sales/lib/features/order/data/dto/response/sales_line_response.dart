import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_line_response.freezed.dart';
part 'sales_line_response.g.dart';

@freezed
class SalesLineResponse with _$SalesLineResponse {
  const factory SalesLineResponse({
    required String status,
    required SalesLineData data,
  }) = _SalesLineResponse;

  factory SalesLineResponse.fromJson(Map<String, dynamic> json) =>
      _$SalesLineResponseFromJson(json);
}

@freezed
class SalesLineData with _$SalesLineData {
  factory SalesLineData({required int count}) = _SalesLineData;

  factory SalesLineData.fromJson(Map<String, dynamic> json) =>
      _$SalesLineDataFromJson(json);
}
