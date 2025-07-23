import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/search_product_history_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'search_product_history_dao.g.dart';

final searchProductHistoryDaoProvider = Provider<SearchProductHistoryDao>((
  ref,
) {
  return SearchProductHistoryDao(ref.watch(appDatabaseProvider));
});

// the _$SearchHistoryDaoMixin will be created by drift. It contains all the necessary
// fields for the tables. The <AppDatabase> type annotation is the database class
// that should use this dao.
@DriftAccessor(tables: [SearchProductHistoryEntity])
class SearchProductHistoryDao extends DatabaseAccessor<AppDatabase>
    with _$SearchProductHistoryDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  SearchProductHistoryDao(super.db);

  Future<void> upsertSearchHistory(String key) async {
    await into(searchProductHistoryEntity).insert(
      SearchProductHistoryEntityCompanion(
        key: Value(key), // The new value (e.g., 'dark')
      ),
      onConflict: DoUpdate(
        (old) => SearchProductHistoryEntityCompanion(
          key: Value(key), // Update the value if the key already exists
        ),
      ),
    );
  }

  Stream<List<SearchProductHistoryEntityData>> watchAll() {
    return (select(searchProductHistoryEntity)).watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }

  Future<int> deleteAll() async {
    return await (delete(searchProductHistoryEntity)).go();
  }
}
