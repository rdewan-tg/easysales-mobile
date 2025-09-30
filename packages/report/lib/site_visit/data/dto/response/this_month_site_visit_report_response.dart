import 'package:freezed_annotation/freezed_annotation.dart';

part 'this_month_site_visit_report_response.freezed.dart';
part 'this_month_site_visit_report_response.g.dart';

ThisMonthSiteVisitReportResponse deserializeThisMonthSiteVisitReportResponse(
  Map<String, dynamic> json,
) => ThisMonthSiteVisitReportResponse.fromJson(json);

@freezed
abstract class ThisMonthSiteVisitReportResponse
    with _$ThisMonthSiteVisitReportResponse {
  const factory ThisMonthSiteVisitReportResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "data") required ThisMonthSiteVisitReportData data,
  }) = _ThisMonthSiteVisitReportResponse;

  factory ThisMonthSiteVisitReportResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ThisMonthSiteVisitReportResponseFromJson(json);
}

@freezed
abstract class ThisMonthSiteVisitReportData
    with _$ThisMonthSiteVisitReportData {
  const factory ThisMonthSiteVisitReportData({
    @JsonKey(name: "totalUniqueVisits") required int totalUniqueVisits,
    @JsonKey(name: "visitDetails")
    required List<ThisMonthSiteVisitDetail> visitDetails,
  }) = _ThisMonthSiteVisitReportData;

  factory ThisMonthSiteVisitReportData.fromJson(Map<String, dynamic> json) =>
      _$ThisMonthSiteVisitReportDataFromJson(json);
}

@freezed
abstract class ThisMonthSiteVisitDetail with _$ThisMonthSiteVisitDetail {
  const factory ThisMonthSiteVisitDetail({
    @JsonKey(name: "customerId") required String customerId,
    @JsonKey(name: "customerName") required String customerName,
    @JsonKey(name: "customerAddress") required String customerAddress,
    @JsonKey(name: "visitCount") required int visitCount,
  }) = _ThisMonthSiteVisitDetail;

  factory ThisMonthSiteVisitDetail.fromJson(Map<String, dynamic> json) =>
      _$ThisMonthSiteVisitDetailFromJson(json);
}
