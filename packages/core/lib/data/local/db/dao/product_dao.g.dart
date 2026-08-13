// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dao.dart';

// ignore_for_file: type=lint
mixin _$ProductDaoMixin on DatabaseAccessor<AppDatabase> {
  $ProductEntityTable get productEntity => attachedDatabase.productEntity;
  $ProductPriceEntityTable get productPriceEntity =>
      attachedDatabase.productPriceEntity;
  ProductDaoManager get managers => ProductDaoManager(this);
}

class ProductDaoManager {
  final _$ProductDaoMixin _db;
  ProductDaoManager(this._db);
  $$ProductEntityTableTableManager get productEntity =>
      $$ProductEntityTableTableManager(_db.attachedDatabase, _db.productEntity);
  $$ProductPriceEntityTableTableManager get productPriceEntity =>
      $$ProductPriceEntityTableTableManager(
        _db.attachedDatabase,
        _db.productPriceEntity,
      );
}
