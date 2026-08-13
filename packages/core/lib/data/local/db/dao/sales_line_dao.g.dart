// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_line_dao.dart';

// ignore_for_file: type=lint
mixin _$SalesLineDaoMixin on DatabaseAccessor<AppDatabase> {
  $SalesHeaderEntityTable get salesHeaderEntity =>
      attachedDatabase.salesHeaderEntity;
  $SalesLineEntityTable get salesLineEntity => attachedDatabase.salesLineEntity;
  SalesLineDaoManager get managers => SalesLineDaoManager(this);
}

class SalesLineDaoManager {
  final _$SalesLineDaoMixin _db;
  SalesLineDaoManager(this._db);
  $$SalesHeaderEntityTableTableManager get salesHeaderEntity =>
      $$SalesHeaderEntityTableTableManager(
        _db.attachedDatabase,
        _db.salesHeaderEntity,
      );
  $$SalesLineEntityTableTableManager get salesLineEntity =>
      $$SalesLineEntityTableTableManager(
        _db.attachedDatabase,
        _db.salesLineEntity,
      );
}
