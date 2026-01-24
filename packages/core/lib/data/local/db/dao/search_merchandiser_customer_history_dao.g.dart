// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_merchandiser_customer_history_dao.dart';

// ignore_for_file: type=lint
mixin _$SearchMerchandiserCustomerHistoryDaoMixin
    on DatabaseAccessor<AppDatabase> {
  $SearchMerchandiserCustomerHistoryEntityTable
  get searchMerchandiserCustomerHistoryEntity =>
      attachedDatabase.searchMerchandiserCustomerHistoryEntity;
  SearchMerchandiserCustomerHistoryDaoManager get managers =>
      SearchMerchandiserCustomerHistoryDaoManager(this);
}

class SearchMerchandiserCustomerHistoryDaoManager {
  final _$SearchMerchandiserCustomerHistoryDaoMixin _db;
  SearchMerchandiserCustomerHistoryDaoManager(this._db);
  $$SearchMerchandiserCustomerHistoryEntityTableTableManager
  get searchMerchandiserCustomerHistoryEntity =>
      $$SearchMerchandiserCustomerHistoryEntityTableTableManager(
        _db.attachedDatabase,
        _db.searchMerchandiserCustomerHistoryEntity,
      );
}
