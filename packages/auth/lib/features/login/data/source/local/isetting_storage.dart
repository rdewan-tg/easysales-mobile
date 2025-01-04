

abstract interface class ISettingStorage {
  Future<void> upsertMultipleSettings(Map<String, String> settings);

}