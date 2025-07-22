import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_visit_response.freezed.dart';
part 'site_visit_response.g.dart';

@freezed
abstract class SiteVisitResponse with _$SiteVisitResponse {
  const factory SiteVisitResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'data') required SiteVisitData data,
  }) = _SiteVisitResponse;

  factory SiteVisitResponse.fromJson(Map<String, dynamic> json) =>
      _$SiteVisitResponseFromJson(json);
}

@freezed
abstract class SiteVisitData with _$SiteVisitData {
  const factory SiteVisitData({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'userId') required int userId,
    @JsonKey(name: 'deviceId') required String deviceId,
    @JsonKey(name: 'salesPersonCode') required String salesPersonCode,
    @JsonKey(name: 'salesPersonName') required String salesPersonName,
    @JsonKey(name: 'customerId') required String customerId,
    @JsonKey(name: 'customerName') required String customerName,
    @JsonKey(name: 'customerAddress') required String customerAddress,
    @JsonKey(name: 'customerChain') required String customerChain,
    @JsonKey(name: 'customerLatitude') required String customerLatitude,
    @JsonKey(name: 'customerLongitude') required String customerLongitude,
    @JsonKey(name: 'timeIn') required String timeIn,
    @JsonKey(name: 'timeOut') String? timeOut,
    @JsonKey(name: 'durationInOutlet') required int durationInOutlet,
    @JsonKey(name: 'areaIds') @Default([]) List<int> areaIds,
    @JsonKey(name: 'companyId') required int companyId,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _SiteVisitData;

  factory SiteVisitData.fromJson(Map<String, dynamic> json) =>
      _$SiteVisitDataFromJson(json);
}
