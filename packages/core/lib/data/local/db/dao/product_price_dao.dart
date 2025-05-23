import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/product_price_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'product_price_dao.g.dart';

final productPriceDaoProvider = Provider<ProductPriceDao>((ref) {
  return ProductPriceDao(ref.watch(appDatabaseProvider));
});

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

  // watch the total count
  Stream<int> watchTotalCount() {
    final countExp = countAll();
    return (selectOnly(productPriceEntity)..addColumns([countExp]))
        .map((row) => row.read(countExp)!)
        .watchSingle();
  }

  Future<List<String>> getProductUom(
    String itemId,
    String priceGroup,
  ) async {
    final query = await (select(productPriceEntity)
          ..where(
            (tbl) =>
                tbl.itemId.equals(itemId) & tbl.priceGroup.equals(priceGroup),
          ))
        .get();

    final result = query.map((e) => e.salesUnit).toList();

    return result;
  }

  Future<List<String>> getProductPackSize(
    String itemId,
    String priceGroup,
  ) async {
    final query = await (selectOnly(productPriceEntity, distinct: true)
          ..addColumns([productPriceEntity.packSize])
          ..where(
            (productPriceEntity.itemId.equals(itemId) &
                productPriceEntity.priceGroup.equals(priceGroup)),
          ))
        .get();

    final result = query
        .map((row) => row.read<String>(productPriceEntity.packSize) ?? '')
        .toList();

    return result;
  }

  Future<ProductPriceEntityData> getProductDetail(
    String itemId,
    String priceGroup,
    String packSize,
    String unit,
  ) async {
    final result = await (select(productPriceEntity)
          ..where(
            (tbl) =>
                tbl.itemId.equals(itemId) &
                tbl.priceGroup.equals(priceGroup) &
                tbl.packSize.equals(packSize) &
                tbl.salesUnit.equals(unit),
          ))
        .getSingle();

    return result;
  }
}
