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

  // watch the total count
  Stream<int> watchTotalCount() {
    final countExp = countAll();
    return (selectOnly(salesCustomerEntity)..addColumns([countExp]))
        .map((row) => row.read(countExp)!)
        .watchSingle();
  }

  Stream<List<SalesCustomerEntityData>> watchAll(String? searchQuery) {
    final query = select(salesCustomerEntity);

    if (searchQuery != null && searchQuery.isNotEmpty) {
      final formattedSearchQuery =
          '%$searchQuery%'; // Add wildcards to match anywhere in the string

      query.where(
        (tbl) =>
            tbl.customerId.like(formattedSearchQuery) | // Filter by customerId
            tbl.customerName
                .like(formattedSearchQuery) | // Filter by customerName
            tbl.customreDimension
                .like(formattedSearchQuery), // Filter by customreDimension
      );
    }

    return query.watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }

  Future<SalesCustomerEntityData> getCustomerByCustomerId(
    String customerId,
  ) async {
    try {
      return await (select(salesCustomerEntity)
            ..where((tbl) => tbl.customerId.equals(customerId)))
          .getSingle();
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  Future<int> deleteAll() async {
    return await (delete(salesCustomerEntity)).go();
  }
}
