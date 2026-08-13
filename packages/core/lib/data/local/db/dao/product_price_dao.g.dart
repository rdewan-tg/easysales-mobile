// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_price_dao.dart';

// ignore_for_file: type=lint
mixin _$ProductPriceDaoMixin on DatabaseAccessor<AppDatabase> {
  $ProductPriceEntityTable get productPriceEntity =>
      attachedDatabase.productPriceEntity;
  ProductPriceDaoManager get managers => ProductPriceDaoManager(this);
}

class ProductPriceDaoManager {
  final _$ProductPriceDaoMixin _db;
  ProductPriceDaoManager(this._db);
  $$ProductPriceEntityTableTableManager get productPriceEntity =>
      $$ProductPriceEntityTableTableManager(
        _db.attachedDatabase,
        _db.productPriceEntity,
      );
}
