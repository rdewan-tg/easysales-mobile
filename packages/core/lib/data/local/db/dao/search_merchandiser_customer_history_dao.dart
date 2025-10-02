import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/search_merchandiser_customer_history_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'search_merchandiser_customer_history_dao.g.dart';

final searchMerchandiserCustomerHistoryDaoProvider =
    Provider<SearchMerchandiserCustomerHistoryDao>((ref) {
      return SearchMerchandiserCustomerHistoryDao(
        ref.watch(appDatabaseProvider),
      );
    });

// the _$SearchHistoryDaoMixin will be created by drift. It contains all the necessary
// fields for the tables. The <AppDatabase> type annotation is the database class
// that should use this dao.
@DriftAccessor(tables: [SearchMerchandiserCustomerHistoryEntity])
class SearchMerchandiserCustomerHistoryDao extends DatabaseAccessor<AppDatabase>
    with _$SearchMerchandiserCustomerHistoryDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  SearchMerchandiserCustomerHistoryDao(super.db);

  Future<void> upsertSearchHistory(String key) async {
    await into(searchMerchandiserCustomerHistoryEntity).insert(
      SearchMerchandiserCustomerHistoryEntityCompanion(
        key: Value(key), // The new value (e.g., 'dark')
      ),
      onConflict: DoUpdate(
        (old) => SearchMerchandiserCustomerHistoryEntityCompanion(
          key: Value(key), // Update the value if the key already exists
        ),
      ),
    );
  }

  Stream<List<SearchMerchandiserCustomerHistoryEntityData>> watchAll() {
    return (select(
      searchMerchandiserCustomerHistoryEntity,
    )).watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }

  Future<int> deleteAll() async {
    return await (delete(searchMerchandiserCustomerHistoryEntity)).go();
  }
}
