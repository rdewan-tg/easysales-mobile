

import 'package:common/exception/failure.dart';
import 'package:setting/application/isetting_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:setting/data/repository/isetting_repository.dart';
import 'package:setting/data/repository/setting_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final settingServiceProvider = Provider<IsettingService>((ref) {
  final settingRepository = ref.watch(settingRepositoryProvider);

  return SettingService(settingRepository);
});

final class SettingService implements IsettingService {
  final ISettingRepository _settingRepository;

  SettingService(this._settingRepository);



  @override
  Future<Result<bool, Failure>> getDeviceSetting(String deviceId) async {
    try {
      await _settingRepository.getDeviceSetting(deviceId);

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
  Future<Result<Map<String, String>, Failure>> getAllSetting() async {
    try {
      final result =  await _settingRepository.getAllSettings();

      return Success(result);
      
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

}