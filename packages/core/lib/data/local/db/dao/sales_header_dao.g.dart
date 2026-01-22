// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_header_dao.dart';

// ignore_for_file: type=lint
mixin _$SalesHeaderDaoMixin on DatabaseAccessor<AppDatabase> {
  $SalesHeaderEntityTable get salesHeaderEntity =>
      attachedDatabase.salesHeaderEntity;
  SalesHeaderDaoManager get managers => SalesHeaderDaoManager(this);
}

class SalesHeaderDaoManager {
  final _$SalesHeaderDaoMixin _db;
  SalesHeaderDaoManager(this._db);
  $$SalesHeaderEntityTableTableManager get salesHeaderEntity =>
      $$SalesHeaderEntityTableTableManager(
        _db.attachedDatabase,
        _db.salesHeaderEntity,
      );
}
