import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/product_price_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'product_price_dao.g.dart';

final productPriceDaoProvider = Provider<ProductPriceDao>((ref) {
  return ProductPriceDao(ref.watch(appDatabaseProvider));
});

// top level function for isolate
Future<void> insertOrUpdateProductPriceList(
  List<ProductPriceEntityData> dataList,
) async {
  try {
    final isolate = await createIsolateWithSpawn();
    final database = AppDatabase(await isolate.connect(singleClientMode: true));
    await database.transaction(() async {
      await database.batch((batch) {
        batch.insertAllOnConflictUpdate(
          database.productPriceEntity,
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

@DriftAccessor(tables: [ProductPriceEntity])
class ProductPriceDao extends DatabaseAccessor<AppDatabase>
    with _$ProductPriceDaoMixin {
  ProductPriceDao(super.db);

  Future<void> insertOrUpdateList(
    List<ProductPriceEntityData> dataList,
  ) async {
    try {
      await transaction(() async {
        await batch((batch) {
          batch.insertAllOnConflictUpdate(
            productPriceEntity,
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

  Stream<List<ProductPriceEntityData>> watchAll({
    String? searchQuery,
  }) {
    final query = select(productPriceEntity);

    if (searchQuery != null && searchQuery.isNotEmpty) {
      query.where(
        (tbl) => tbl.priceGroup.contains(searchQuery), // Filter by priceGroup
      );
    }

    // Order by productName in ascending order
    query.orderBy([
      (tbl) => OrderingTerm(expression: tbl.productId, mode: OrderingMode.asc),
    ]);

    return query.watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }
}
