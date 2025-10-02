import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_setting.freezed.dart';
part 'company_setting.g.dart';

CompanySettingResponse deserializeCompanySettingResponse(
  Map<String, dynamic> json,
) => CompanySettingResponse.fromJson(json);

@freezed
abstract class CompanySettingResponse with _$CompanySettingResponse {
  const factory CompanySettingResponse({
    required String status,
    required CompanySettingDto data,
  }) = _CompanySettingResponse;

  factory CompanySettingResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanySettingResponseFromJson(json);
}

@freezed
abstract class CompanySettingDto with _$CompanySettingDto {
  const factory CompanySettingDto({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "companyId") required int companyId,
    @JsonKey(name: "timeZone") required String timeZone,
    @JsonKey(name: "isSiteVisitEnabled") required bool isSiteVisitEnabled,
  }) = _CompanySettingDto;

  factory CompanySettingDto.fromJson(Map<String, dynamic> json) =>
      _$CompanySettingDtoFromJson(json);
}
