import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/sales_customer_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'sales_customer_dao.g.dart';

final salesCustomerDaoProvider = Provider<SalesCustomerDao>((ref) {
  return SalesCustomerDao(ref.watch(appDatabaseProvider));
});

@DriftAccessor(tables: [SalesCustomerEntity])
class SalesCustomerDao extends DatabaseAccessor<AppDatabase>
    with _$SalesCustomerDaoMixin {
  SalesCustomerDao(super.db);

  Future<void> insertOrUpdateList(
    List<SalesCustomerEntityData> dataList,
  ) async {
    try {
      await batch((batch) {
        batch.insertAllOnConflictUpdate(
          salesCustomerEntity,
          dataList,
        );
      });
    } catch (e, stackTrace) {
      throw Failure(
        message: 'Failed to insert or update list: $e',
        stackTrace: stackTrace,
      );
    }
  }

  Stream<List<SalesCustomerEntityData>> watchAll(String? searchQuery) {
    final query = select(salesCustomerEntity);

    if (searchQuery != null && searchQuery.isNotEmpty) {
      query.where(
        (tbl) =>
            tbl.customerId.contains(searchQuery) | // Filter by customerId
            tbl.customerName.contains(searchQuery), // Filter by customerName
      );
    }

    return query.watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }

  Future<int> deleteAll() async {
    return await (delete(salesCustomerEntity)).go();
  }
}
