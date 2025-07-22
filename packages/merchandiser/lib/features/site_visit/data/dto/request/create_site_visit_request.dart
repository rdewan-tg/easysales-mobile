import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_site_visit_request.freezed.dart';
part 'create_site_visit_request.g.dart';

@freezed
abstract class CreateSiteVisitRequest with _$CreateSiteVisitRequest {
  const factory CreateSiteVisitRequest({
    @JsonKey(name: 'deviceId') required String deviceId,
    @JsonKey(name: 'salesPersonCode') required String salesPersonCode,
    @JsonKey(name: 'salesPersonName') required String salesPersonName,
    @JsonKey(name: 'customerId') required String customerId,
    @JsonKey(name: 'customerName') required String customerName,
    @JsonKey(name: 'customerAddress') required String customerAddress,
    @JsonKey(name: 'customerChain') required String customerChain,
    @JsonKey(name: 'customerLatitude') required double customerLatitude,
    @JsonKey(name: 'customerLongitude') required double customerLongitude,
    @JsonKey(name: 'timeIn') required String timeIn,
    @JsonKey(name: 'timeOut') String? timeOut,
  }) = _CreateSiteVisitRequest;

  factory CreateSiteVisitRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSiteVisitRequestFromJson(json);
}
