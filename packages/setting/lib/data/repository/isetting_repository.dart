import 'package:setting/data/dto/device_setting.dart';
import 'package:setting/data/dto/company_setting.dart';

abstract interface class ISettingRepository {
  Future<int> getOrderRunningNumber();

  Future<void> setOrderRunningNumber(String value);

  Future<DeviceSettingResponse> getDeviceSetting(String deviceId);

  Future<CompanySettingResponse> getCompanySetting();

  Stream<String> watchThemeMode();

  Stream<String> watchLanguage();

  Future<void> writeTheme(String key, String value);

  Future<void> writeLanguage(String key, String value);

  Future<void> clearToken();

  Future<Map<String, String>> getAllSettings();

  Future<void> upsertMultipleSettings(Map<String, String> settings);
}
