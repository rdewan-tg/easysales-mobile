// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_customer_dao.dart';

// ignore_for_file: type=lint
mixin _$SalesCustomerDaoMixin on DatabaseAccessor<AppDatabase> {
  $SalesCustomerEntityTable get salesCustomerEntity =>
      attachedDatabase.salesCustomerEntity;
  SalesCustomerDaoManager get managers => SalesCustomerDaoManager(this);
}

class SalesCustomerDaoManager {
  final _$SalesCustomerDaoMixin _db;
  SalesCustomerDaoManager(this._db);
  $$SalesCustomerEntityTableTableManager get salesCustomerEntity =>
      $$SalesCustomerEntityTableTableManager(
        _db.attachedDatabase,
        _db.salesCustomerEntity,
      );
}
