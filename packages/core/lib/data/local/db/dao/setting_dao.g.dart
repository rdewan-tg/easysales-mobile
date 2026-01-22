// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_dao.dart';

// ignore_for_file: type=lint
mixin _$SettingDaoMixin on DatabaseAccessor<AppDatabase> {
  $SettingEntityTable get settingEntity => attachedDatabase.settingEntity;
  SettingDaoManager get managers => SettingDaoManager(this);
}

class SettingDaoManager {
  final _$SettingDaoMixin _db;
  SettingDaoManager(this._db);
  $$SettingEntityTableTableManager get settingEntity =>
      $$SettingEntityTableTableManager(_db.attachedDatabase, _db.settingEntity);
}
