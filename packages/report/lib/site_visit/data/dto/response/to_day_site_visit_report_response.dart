import 'package:freezed_annotation/freezed_annotation.dart';

part 'to_day_site_visit_report_response.freezed.dart';
part 'to_day_site_visit_report_response.g.dart';

ToDaySiteVisitReportResponse deserializeToDaySiteVisitReportResponse(
  Map<String, dynamic> json,
) => ToDaySiteVisitReportResponse.fromJson(json);

@freezed
class ToDaySiteVisitReportResponse with _$ToDaySiteVisitReportResponse {
  const factory ToDaySiteVisitReportResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "data") required ToDaySiteVisitReportData data,
  }) = _ToDaySiteVisitReportResponse;

  factory ToDaySiteVisitReportResponse.fromJson(Map<String, dynamic> json) =>
      _$ToDaySiteVisitReportResponseFromJson(json);
}

@freezed
class ToDaySiteVisitReportData with _$ToDaySiteVisitReportData {
  const factory ToDaySiteVisitReportData({
    @JsonKey(name: "totalUniqueVisits") required int totalUniqueVisits,
    @JsonKey(name: "visitDetails")
    required List<ToDaySiteVisitDetail> visitDetails,
  }) = _ToDaySiteVisitReportData;

  factory ToDaySiteVisitReportData.fromJson(Map<String, dynamic> json) =>
      _$ToDaySiteVisitReportDataFromJson(json);
}

@freezed
class ToDaySiteVisitDetail with _$ToDaySiteVisitDetail {
  const factory ToDaySiteVisitDetail({
    @JsonKey(name: "customerId") required String customerId,
    @JsonKey(name: "customerName") required String customerName,
    @JsonKey(name: "customerAddress") required String customerAddress,
  }) = _ToDaySiteVisitDetail;

  factory ToDaySiteVisitDetail.fromJson(Map<String, dynamic> json) =>
      _$ToDaySiteVisitDetailFromJson(json);
}
