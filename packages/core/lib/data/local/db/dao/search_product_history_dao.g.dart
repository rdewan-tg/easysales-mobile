// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_product_history_dao.dart';

// ignore_for_file: type=lint
mixin _$SearchProductHistoryDaoMixin on DatabaseAccessor<AppDatabase> {
  $SearchProductHistoryEntityTable get searchProductHistoryEntity =>
      attachedDatabase.searchProductHistoryEntity;
  SearchProductHistoryDaoManager get managers =>
      SearchProductHistoryDaoManager(this);
}

class SearchProductHistoryDaoManager {
  final _$SearchProductHistoryDaoMixin _db;
  SearchProductHistoryDaoManager(this._db);
  $$SearchProductHistoryEntityTableTableManager
  get searchProductHistoryEntity =>
      $$SearchProductHistoryEntityTableTableManager(
        _db.attachedDatabase,
        _db.searchProductHistoryEntity,
      );
}
