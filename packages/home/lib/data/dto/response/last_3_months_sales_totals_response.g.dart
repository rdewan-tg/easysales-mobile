// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_3_months_sales_totals_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Last3MonthsSalesTotalsResponse _$Last3MonthsSalesTotalsResponseFromJson(
  Map<String, dynamic> json,
) => _Last3MonthsSalesTotalsResponse(
  status: json['status'] as String,
  data: Last3MonthsSalesTotalsData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$Last3MonthsSalesTotalsResponseToJson(
  _Last3MonthsSalesTotalsResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_Last3MonthsSalesTotalsData _$Last3MonthsSalesTotalsDataFromJson(
  Map<String, dynamic> json,
) => _Last3MonthsSalesTotalsData(
  maxY: json['maxY'] as num,
  labels: (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
  points: (json['points'] as List<dynamic>)
      .map(
        (e) => MonthlySalesTotalPointData.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$Last3MonthsSalesTotalsDataToJson(
  _Last3MonthsSalesTotalsData instance,
) => <String, dynamic>{
  'maxY': instance.maxY,
  'labels': instance.labels,
  'points': instance.points,
};

_MonthlySalesTotalPointData _$MonthlySalesTotalPointDataFromJson(
  Map<String, dynamic> json,
) => _MonthlySalesTotalPointData(
  x: (json['x'] as num).toInt(),
  y: json['y'] as num,
  label: json['label'] as String,
  totalQuantitySold: json['totalQuantitySold'] as num,
);

Map<String, dynamic> _$MonthlySalesTotalPointDataToJson(
  _MonthlySalesTotalPointData instance,
) => <String, dynamic>{
  'x': instance.x,
  'y': instance.y,
  'label': instance.label,
  'totalQuantitySold': instance.totalQuantitySold,
};
