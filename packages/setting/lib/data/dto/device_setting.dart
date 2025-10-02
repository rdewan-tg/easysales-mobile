import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_setting.freezed.dart';
part 'device_setting.g.dart';

DeviceSettingResponse deserializeDeviceSettingResponse(
  Map<String, dynamic> json,
) => DeviceSettingResponse.fromJson(json);

@freezed
abstract class DeviceSettingResponse with _$DeviceSettingResponse {
  const factory DeviceSettingResponse({
    required String status,
    required DeviceSettingData data,
  }) = _DeviceSettingResponse;

  factory DeviceSettingResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceSettingResponseFromJson(json);
}

@freezed
abstract class DeviceSettingData with _$DeviceSettingData {
  const factory DeviceSettingData({
    required int id,
    required String deviceId,
    required int userId,
    required String userName,
    required String salesPersonCode,
    required String orderNumberFormat,
    required DateTime createAt,
    required DateTime updatedAt,
    required int companyId,
  }) = _DeviceSettingData;

  factory DeviceSettingData.fromJson(Map<String, dynamic> json) =>
      _$DeviceSettingDataFromJson(json);
}
