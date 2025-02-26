import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class ISettingService {
  Future<Result<bool, Failure>> getDeviceSetting(String deviceId);

  Stream<String> watchThemeMode();

  Stream<String> watchLanguage();

  Future<Result<bool, Failure>> writeTheme(String key, String value);

  Future<Result<bool, Failure>> writeLanguage(String key, String value);

  Future<void> clearToken();

  Future<Map<String, String>> getAllSetting();
}
