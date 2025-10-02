// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'this_month_site_visit_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ThisMonthSiteVisitReportResponse _$ThisMonthSiteVisitReportResponseFromJson(
  Map<String, dynamic> json,
) => _ThisMonthSiteVisitReportResponse(
  status: json['status'] as String,
  data: ThisMonthSiteVisitReportData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ThisMonthSiteVisitReportResponseToJson(
  _ThisMonthSiteVisitReportResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_ThisMonthSiteVisitReportData _$ThisMonthSiteVisitReportDataFromJson(
  Map<String, dynamic> json,
) => _ThisMonthSiteVisitReportData(
  totalUniqueVisits: (json['totalUniqueVisits'] as num).toInt(),
  visitDetails: (json['visitDetails'] as List<dynamic>)
      .map((e) => ThisMonthSiteVisitDetail.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ThisMonthSiteVisitReportDataToJson(
  _ThisMonthSiteVisitReportData instance,
) => <String, dynamic>{
  'totalUniqueVisits': instance.totalUniqueVisits,
  'visitDetails': instance.visitDetails,
};

_ThisMonthSiteVisitDetail _$ThisMonthSiteVisitDetailFromJson(
  Map<String, dynamic> json,
) => _ThisMonthSiteVisitDetail(
  customerId: json['customerId'] as String,
  customerName: json['customerName'] as String,
  customerAddress: json['customerAddress'] as String,
  visitCount: (json['visitCount'] as num).toInt(),
);

Map<String, dynamic> _$ThisMonthSiteVisitDetailToJson(
  _ThisMonthSiteVisitDetail instance,
) => <String, dynamic>{
  'customerId': instance.customerId,
  'customerName': instance.customerName,
  'customerAddress': instance.customerAddress,
  'visitCount': instance.visitCount,
};
