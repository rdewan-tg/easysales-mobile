// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_sales_customer_history_dao.dart';

// ignore_for_file: type=lint
mixin _$SearchSalesCustomerHistoryDaoMixin on DatabaseAccessor<AppDatabase> {
  $SearchSalesCustomerHistoryEntityTable get searchSalesCustomerHistoryEntity =>
      attachedDatabase.searchSalesCustomerHistoryEntity;
  SearchSalesCustomerHistoryDaoManager get managers =>
      SearchSalesCustomerHistoryDaoManager(this);
}

class SearchSalesCustomerHistoryDaoManager {
  final _$SearchSalesCustomerHistoryDaoMixin _db;
  SearchSalesCustomerHistoryDaoManager(this._db);
  $$SearchSalesCustomerHistoryEntityTableTableManager
  get searchSalesCustomerHistoryEntity =>
      $$SearchSalesCustomerHistoryEntityTableTableManager(
        _db.attachedDatabase,
        _db.searchSalesCustomerHistoryEntity,
      );
}
