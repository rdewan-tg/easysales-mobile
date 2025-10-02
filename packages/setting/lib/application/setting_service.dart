import 'package:common/exception/failure.dart';
import 'package:setting/application/isetting_service.dart';
import 'package:setting/data/repository/isetting_repository.dart';
import 'package:setting/data/repository/setting_repository.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_service.g.dart';

@Riverpod(keepAlive: true)
ISettingService settingService(Ref ref) {
  final settingRepository = ref.watch(settingRepositoryProvider);
  return SettingService(settingRepository);
}

final class SettingService implements ISettingService {
  final ISettingRepository _settingRepository;

  SettingService(this._settingRepository);

  @override
  Future<int> getOrderRunningNumber() async {
    try {
      return await _settingRepository.getOrderRunningNumber();
    } on Failure catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> setOrderRunningNumber(String value) async {
    try {
      return await _settingRepository.setOrderRunningNumber(value);
    } on Failure catch (_) {
      rethrow;
    }
  }

  @override
  Future<Result<Map<String, String>, Failure>> getDeviceSetting(
    String deviceId,
  ) async {
    try {
      // Get device setting from remote
      final response = await _settingRepository.getDeviceSetting(deviceId);

      // Update device setting to local
      await _settingRepository.upsertMultipleSettings({
        'deviceId': response.data.deviceId,
        'salesPersonCode': response.data.salesPersonCode,
        'orderNumberFormat': response.data.orderNumberFormat,
      });

      final result = await _settingRepository.getAllSettings();

      return Success(result);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(Failure(message: e.toString(), stackTrace: s));
    }
  }

  @override
  Stream<String> watchThemeMode() {
    return _settingRepository.watchThemeMode();
  }

  @override
  Stream<String> watchLanguage() {
    return _settingRepository.watchLanguage();
  }

  @override
  Future<Result<bool, Failure>> writeTheme(String key, String value) async {
    try {
      await _settingRepository.writeTheme(key, value);

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Result<bool, Failure>> writeLanguage(String key, String value) async {
    try {
      await _settingRepository.writeLanguage(key, value);

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<void> clearToken() async {
    try {
      await _settingRepository.clearToken();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Map<String, String>> getAllSetting() async {
    try {
      return await _settingRepository.getAllSettings();
    } on Failure catch (_) {
      rethrow;
    } catch (e, s) {
      throw Failure(
        message: e.toString(),
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }

  @override
  Future<Result<Map<String, String>, Failure>> getCompanySetting() async {
    try {
      // Get device setting from remote
      final response = await _settingRepository.getCompanySetting();

      // Update device setting to local
      await _settingRepository.upsertMultipleSettings({
        'companyId': response.data.id.toString(),
        'timeZone': response.data.timeZone,
        'isSiteVisitEnabled': response.data.isSiteVisitEnabled.toString(),
      });

      final result = await _settingRepository.getAllSettings();

      return Success(result);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(Failure(message: e.toString(), stackTrace: s));
    }
  }
}
