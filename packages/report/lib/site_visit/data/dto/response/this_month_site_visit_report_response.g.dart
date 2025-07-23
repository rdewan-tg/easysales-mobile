// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'this_month_site_visit_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThisMonthSiteVisitReportResponseImpl
_$$ThisMonthSiteVisitReportResponseImplFromJson(Map<String, dynamic> json) =>
    _$ThisMonthSiteVisitReportResponseImpl(
      status: json['status'] as String,
      data: ThisMonthSiteVisitReportData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$ThisMonthSiteVisitReportResponseImplToJson(
  _$ThisMonthSiteVisitReportResponseImpl instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_$ThisMonthSiteVisitReportDataImpl _$$ThisMonthSiteVisitReportDataImplFromJson(
  Map<String, dynamic> json,
) => _$ThisMonthSiteVisitReportDataImpl(
  totalUniqueVisits: (json['totalUniqueVisits'] as num).toInt(),
  visitDetails: (json['visitDetails'] as List<dynamic>)
      .map((e) => ThisMonthSiteVisitDetail.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ThisMonthSiteVisitReportDataImplToJson(
  _$ThisMonthSiteVisitReportDataImpl instance,
) => <String, dynamic>{
  'totalUniqueVisits': instance.totalUniqueVisits,
  'visitDetails': instance.visitDetails,
};

_$ThisMonthSiteVisitDetailImpl _$$ThisMonthSiteVisitDetailImplFromJson(
  Map<String, dynamic> json,
) => _$ThisMonthSiteVisitDetailImpl(
  customerId: json['customerId'] as String,
  customerName: json['customerName'] as String,
  customerAddress: json['customerAddress'] as String,
  visitCount: (json['visitCount'] as num).toInt(),
);

Map<String, dynamic> _$$ThisMonthSiteVisitDetailImplToJson(
  _$ThisMonthSiteVisitDetailImpl instance,
) => <String, dynamic>{
  'customerId': instance.customerId,
  'customerName': instance.customerName,
  'customerAddress': instance.customerAddress,
  'visitCount': instance.visitCount,
};
