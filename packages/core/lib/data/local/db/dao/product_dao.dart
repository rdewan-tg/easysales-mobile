import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/product_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'product_dao.g.dart';

final productDaoProvider = Provider<ProductDao>((ref) {
  return ProductDao(ref.watch(appDatabaseProvider));
});

// top level function for isolate
Future<void> insertOrUpdateProductList(List<ProductEntityData> dataList) async {
  try {
    final isolate = await createIsolateWithSpawn();
    final database = AppDatabase(await isolate.connect(singleClientMode: true));

    await database.transaction(() async {
      await database.batch((batch) {
        batch.insertAllOnConflictUpdate(
          database.productEntity,
          dataList,
        );
      });
    });
  } catch (e, stackTrace) {
    throw Failure(
      message: 'Failed to insert or update list: $e',
      stackTrace: stackTrace,
    );
  }
}

@DriftAccessor(tables: [ProductEntity])
class ProductDao extends DatabaseAccessor<AppDatabase> with _$ProductDaoMixin {
  ProductDao(super.db);

  Future<void> insertOrUpdateList(List<ProductEntityData> dataList) async {
    try {
      await transaction(() async {
        await batch((batch) {
          batch.insertAllOnConflictUpdate(
            productEntity,
            dataList,
          );
        });
      });
    } catch (e, stackTrace) {
      throw Failure(
        message: 'Failed to insert or update list: $e',
        stackTrace: stackTrace,
      );
    }
  }

  Stream<List<ProductEntityData>> watchAll({
    String? searchQuery,
  }) {
    final query = select(productEntity);

    if (searchQuery != null && searchQuery.isNotEmpty) {
      final formattedSearchQuery =
          '%$searchQuery%'; // Add wildcards to match anywhere in the string

      query.where(
        (tbl) =>
            tbl.itemId.like(formattedSearchQuery) | // Filter by name
            tbl.productName.like(formattedSearchQuery), // Filter by name
      );
    }

    // Order by productName in ascending order
    query.orderBy([
      (tbl) =>
          OrderingTerm(expression: tbl.productName, mode: OrderingMode.asc),
    ]);

    return query.watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }
}
