// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_address_dao.dart';

// ignore_for_file: type=lint
mixin _$CustomerAddressDaoMixin on DatabaseAccessor<AppDatabase> {
  $CustomerAddressEntityTable get customerAddressEntity =>
      attachedDatabase.customerAddressEntity;
  CustomerAddressDaoManager get managers => CustomerAddressDaoManager(this);
}

class CustomerAddressDaoManager {
  final _$CustomerAddressDaoMixin _db;
  CustomerAddressDaoManager(this._db);
  $$CustomerAddressEntityTableTableManager get customerAddressEntity =>
      $$CustomerAddressEntityTableTableManager(
        _db.attachedDatabase,
        _db.customerAddressEntity,
      );
}
