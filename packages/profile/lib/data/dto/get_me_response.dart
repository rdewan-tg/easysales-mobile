import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_me_response.freezed.dart';
part 'get_me_response.g.dart';

@freezed
abstract class GetMeResponse with _$GetMeResponse {
  const factory GetMeResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "data") required DataDto data,
  }) = _GetMeResponse;

  factory GetMeResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMeResponseFromJson(json);
}

@freezed
abstract class DataDto with _$DataDto {
  const factory DataDto({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "phoneNumber") String? phoneNumber,
    @JsonKey(name: "photo") String? photo,
    @JsonKey(name: "dashboardPath") required String dashboardPath,
    @JsonKey(name: "roles") required List<RoleDto> roles,
    @JsonKey(name: "areaIds") required List<int> areaIds,
    @JsonKey(name: "company") required MeCompanyDto company,
  }) = _DataDto;

  factory DataDto.fromJson(Map<String, dynamic> json) =>
      _$DataDtoFromJson(json);
}

@freezed
abstract class RoleDto with _$RoleDto {
  const factory RoleDto({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required UserRole name,
  }) = _RoleDto;

  factory RoleDto.fromJson(Map<String, dynamic> json) =>
      _$RoleDtoFromJson(json);
}

@freezed
abstract class MeCompanyDto with _$MeCompanyDto {
  const factory MeCompanyDto({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "timeZone") String? timeZone,
  }) = _MeCompanyDto;

  factory MeCompanyDto.fromJson(Map<String, dynamic> json) =>
      _$MeCompanyDtoFromJson(json);
}
