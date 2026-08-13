// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchandiser_customer_dao.dart';

// ignore_for_file: type=lint
mixin _$MerchandiserCustomerDaoMixin on DatabaseAccessor<AppDatabase> {
  $MerchandiserCustomerEntityTable get merchandiserCustomerEntity =>
      attachedDatabase.merchandiserCustomerEntity;
  MerchandiserCustomerDaoManager get managers =>
      MerchandiserCustomerDaoManager(this);
}

class MerchandiserCustomerDaoManager {
  final _$MerchandiserCustomerDaoMixin _db;
  MerchandiserCustomerDaoManager(this._db);
  $$MerchandiserCustomerEntityTableTableManager
  get merchandiserCustomerEntity =>
      $$MerchandiserCustomerEntityTableTableManager(
        _db.attachedDatabase,
        _db.merchandiserCustomerEntity,
      );
}
