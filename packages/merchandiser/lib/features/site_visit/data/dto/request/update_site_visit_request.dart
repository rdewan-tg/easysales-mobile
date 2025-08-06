import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_site_visit_request.freezed.dart';
part 'update_site_visit_request.g.dart';

@freezed
abstract class UpdateSiteVisitRequest with _$UpdateSiteVisitRequest {
  const factory UpdateSiteVisitRequest({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'timeOut') required String timeOut,
  }) = _UpdateSiteVisitRequest;

  factory UpdateSiteVisitRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSiteVisitRequestFromJson(json);
}
