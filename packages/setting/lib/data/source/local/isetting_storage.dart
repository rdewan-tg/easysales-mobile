abstract interface class ISettingStorage {
  Future<void> clearToken();

  Future<void> upsertMultipleSettings(Map<String, String> settings);
}
