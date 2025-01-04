
import 'package:auth/features/login/data/source/local/isetting_storage.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingStorageProvider = Provider<ISettingStorage>((ref) {
  final settingDao = ref.watch(settingDaoProvider);

  return SettingStorage(settingDao);
});

class SettingStorage  implements ISettingStorage {
  final SettingDao _settingDao;

  SettingStorage(this._settingDao);

  @override
  Future<void> upsertMultipleSettings(Map<String, String> settings)async {
    try {
      await _settingDao.upsertMultipleSettings(settings);
      
    } catch (e) {
      rethrow;
    }
  }
}