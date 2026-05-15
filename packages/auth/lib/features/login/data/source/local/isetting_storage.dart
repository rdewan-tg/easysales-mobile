abstract interface class ISettingStorage {
  Future<void> upsertMultipleSettings(Map<String, String> settings);

  Future<void> upsertAreaIds(List<int> areaIds);
}
