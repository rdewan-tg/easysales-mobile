// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_day_site_visit_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToDaySiteVisitReportResponseImpl _$$ToDaySiteVisitReportResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ToDaySiteVisitReportResponseImpl(
      status: json['status'] as String,
      data: ToDaySiteVisitReportData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ToDaySiteVisitReportResponseImplToJson(
        _$ToDaySiteVisitReportResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$ToDaySiteVisitReportDataImpl _$$ToDaySiteVisitReportDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ToDaySiteVisitReportDataImpl(
      totalUniqueVisits: (json['totalUniqueVisits'] as num).toInt(),
      visitDetails: (json['visitDetails'] as List<dynamic>)
          .map((e) => ToDaySiteVisitDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ToDaySiteVisitReportDataImplToJson(
        _$ToDaySiteVisitReportDataImpl instance) =>
    <String, dynamic>{
      'totalUniqueVisits': instance.totalUniqueVisits,
      'visitDetails': instance.visitDetails,
    };

_$ToDaySiteVisitDetailImpl _$$ToDaySiteVisitDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$ToDaySiteVisitDetailImpl(
      customerId: json['customerId'] as String,
      customerName: json['customerName'] as String,
      customerAddress: json['customerAddress'] as String,
    );

Map<String, dynamic> _$$ToDaySiteVisitDetailImplToJson(
        _$ToDaySiteVisitDetailImpl instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'customerAddress': instance.customerAddress,
    };
