import 'package:common/common.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/setting_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'setting_dao.g.dart';

final settingDaoProvider = Provider<SettingDao>((ref) {
  return SettingDao(ref.watch(appDatabaseProvider));
});

// the _$SettingDaoMixi will be created by drift. It contains all the necessary
// fields for the tables. The <AppDatabase> type annotation is the database class
// that should use this dao.
@DriftAccessor(tables: [SettingEntity])
class SettingDao extends DatabaseAccessor<AppDatabase> with _$SettingDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  SettingDao(super.db);

  Future<void> upsertSetting(String key, String value) async {
    await into(settingEntity).insert(
      SettingEntityCompanion(
        key: Value(key), // The setting key (e.g., 'themeMode')
        value: Value(value), // The new value (e.g., 'dark')
      ),
      onConflict: DoUpdate(
        (old) => SettingEntityCompanion(
          value: Value(value), // Update the value if the key already exists
        ),
      ),
    );
  }

  // Stream to fetch `themeMode`
  Stream<String> watchThemeMode() {
    return (select(settingEntity)
          ..where((tbl) => tbl.key.equals(themekey))
          ..limit(1))
        .watchSingleOrNull()
        .map(
          (row) => row?.value ?? kDark,
        ); // Default to 'light' if no row exists
  }

  Stream<String> watchLanguage() {
    return (select(settingEntity)
          ..where((tbl) => tbl.key.equals(languageKey))
          ..limit(1))
        .watchSingleOrNull()
        .map((row) => row?.value ?? 'en'); // Default to 'en' if no row exists
  }

  Future<void> upsertMultipleSettings(Map<String, String> settings) async {
    for (final entry in settings.entries) {
      await upsertSetting(entry.key, entry.value);
    }
  }

  Future<Map<String, String>> getAllSettings() async {
    final rows = await select(settingEntity).get();
    return {for (var row in rows) row.key: row.value ?? ''};
  }
}
