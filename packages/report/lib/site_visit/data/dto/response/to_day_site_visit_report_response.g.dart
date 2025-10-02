// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_day_site_visit_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ToDaySiteVisitReportResponse _$ToDaySiteVisitReportResponseFromJson(
  Map<String, dynamic> json,
) => _ToDaySiteVisitReportResponse(
  status: json['status'] as String,
  data: ToDaySiteVisitReportData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ToDaySiteVisitReportResponseToJson(
  _ToDaySiteVisitReportResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_ToDaySiteVisitReportData _$ToDaySiteVisitReportDataFromJson(
  Map<String, dynamic> json,
) => _ToDaySiteVisitReportData(
  totalUniqueVisits: (json['totalUniqueVisits'] as num).toInt(),
  visitDetails: (json['visitDetails'] as List<dynamic>)
      .map((e) => ToDaySiteVisitDetail.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ToDaySiteVisitReportDataToJson(
  _ToDaySiteVisitReportData instance,
) => <String, dynamic>{
  'totalUniqueVisits': instance.totalUniqueVisits,
  'visitDetails': instance.visitDetails,
};

_ToDaySiteVisitDetail _$ToDaySiteVisitDetailFromJson(
  Map<String, dynamic> json,
) => _ToDaySiteVisitDetail(
  customerId: json['customerId'] as String,
  customerName: json['customerName'] as String,
  customerAddress: json['customerAddress'] as String,
);

Map<String, dynamic> _$ToDaySiteVisitDetailToJson(
  _ToDaySiteVisitDetail instance,
) => <String, dynamic>{
  'customerId': instance.customerId,
  'customerName': instance.customerName,
  'customerAddress': instance.customerAddress,
};
