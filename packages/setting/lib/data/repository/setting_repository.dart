
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:setting/data/dto/device_setting.dart';
import 'package:setting/data/repository/isetting_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:dio/dio.dart';
import 'package:setting/data/source/local/isetting_storage.dart';
import 'package:setting/data/source/local/setting_storage.dart';
import 'package:setting/data/source/remote/setting_api.dart';

final settingRepositoryProvider = Provider<ISettingRepository>((ref) {
  final settingApi = ref.watch(settingApiProvider);
  final settingDao = ref.watch(settingDaoProvider);
  final settingStorage = ref.watch(settingStorageProvider);
  
  return SettingRepositroy(settingApi, settingDao, settingStorage);
});

final class SettingRepositroy with DioExceptionMapper implements ISettingRepository {
  final SettingApi _settingApi;
  final SettingDao _settingDao;
   final ISettingStorage _settingStorage;

  SettingRepositroy(this._settingApi, this._settingDao, this._settingStorage);


  @override
  Future<DeviceSettingResponse > getDeviceSetting(String deviceId) async {
    try {

      final response = await _settingApi.findByDeviceId(deviceId);

      return response;
      
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message: "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }

    
  }

  @override
  Stream<String> watchThemeMode() => _settingDao.watchThemeMode();

  @override
  Stream<String> watchLanguage() => _settingDao.watchLanguage();
  
  @override
  Future<void> writeTheme(String key, String value) async {
    await _settingDao.upsertSetting(key, value);
  }

  @override
  Future<void> writeLanguage(String key, String value) async {
    await _settingDao.upsertSetting(key, value);
  }

  @override
  Future<void> clearToken() async {
    try {
      await _settingStorage.clearToken();
      
    } catch (_) {
      rethrow;
    }
    
  }
  
  @override
  Future<Map<String, String>> getAllSettings() {
    try {
      return _settingDao.getAllSettings();
      
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }
}