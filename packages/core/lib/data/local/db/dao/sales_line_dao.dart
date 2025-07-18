import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/sales_line_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'sales_line_dao.g.dart';

final salesLineDaoProvider = Provider<SalesLineDao>((ref) {
  return SalesLineDao(ref.watch(appDatabaseProvider));
});

@DriftAccessor(tables: [SalesLineEntity])
class SalesLineDao extends DatabaseAccessor<AppDatabase>
    with _$SalesLineDaoMixin {
  SalesLineDao(super.db);

  Future<int> addSalesLine(SalesLineEntityCompanion data) async {
    // Check if the item already exists in the sales order
    final existingLine =
        await (select(salesLineEntity)..where(
              (tbl) =>
                  tbl.salesId.equals(data.salesId.value) &
                  tbl.productId.equals(data.productId.value),
            ))
            .getSingleOrNull();
    // check if the order is already synced
    final isSynced =
        await (select(salesLineEntity)..where(
              (tbl) =>
                  tbl.salesId.equals(data.salesId.value) &
                  tbl.syncStatus.equals(1),
            ))
            .getSingleOrNull();
    // throw an error if the item already exists
    if (existingLine != null) {
      throw const Failure(message: 'Item already exists in the sales order.');
    }
    // Throw an error if the order is already synced
    if (isSynced != null) {
      throw const Failure(
        message: 'The order is already synced and cannot be modified.',
      );
    }
    // add the new item
    return into(salesLineEntity).insert(data);
  }

  Future<int> updateSalesLine(SalesLineEntityCompanion data) {
    try {
      return (update(salesLineEntity)..where(
            (tbl) =>
                tbl.salesId.equals(data.salesId.value) &
                tbl.lineId.equals(data.lineId.value),
          ))
          .write(data);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  Future<int> updateSyncStatus(SalesLineEntityCompanion data) {
    try {
      return (update(
        salesLineEntity,
      )..where((tbl) => tbl.salesId.equals(data.salesId.value))).write(data);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  Stream<List<SalesLineEntityData>> watchSalesLineBySalesId(String salesId) {
    final query =
        (select(salesLineEntity)..where((tbl) => tbl.salesId.equals(salesId)))
          ..orderBy([
            (tbl) =>
                OrderingTerm(expression: tbl.lineId, mode: OrderingMode.asc),
          ]);

    return query.watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }

  Future<List<SalesLineEntityData>> getSalesLineBySalesId(
    String salesId,
  ) async {
    final query =
        await (select(salesLineEntity)
              ..where((tbl) => tbl.salesId.equals(salesId))
              ..orderBy([
                (tbl) => OrderingTerm(
                  expression: tbl.lineId,
                  mode: OrderingMode.asc,
                ),
              ]))
            .get();

    return query;
  }

  Future<int> getMaxLineNumberBySalesId(String salesId) async {
    // Query to get the maximum line number for the given sales order
    final maxLineNumberQuery = selectOnly(salesLineEntity)
      ..addColumns([salesLineEntity.lineId])
      ..where(salesLineEntity.salesId.equals(salesId))
      ..orderBy([OrderingTerm.desc(salesLineEntity.lineId)])
      ..limit(1);

    final maxLineNumber = await maxLineNumberQuery
        .map((row) => row.read(salesLineEntity.lineId))
        .getSingleOrNull();

    // If no lines exist for the sales order, start with line number 1
    return maxLineNumber ?? 0;
  }

  // get the sum on line amount
  Stream<double> getSumOnLineAmount(String salesId) {
    return (select(
      salesLineEntity,
    )..where((tbl) => tbl.salesId.equals(salesId))).watch().map(
      (event) => event.fold(
        0.0,
        (previousValue, element) => previousValue + element.lineAmount,
      ),
    );
  }

  Future<int> deleteLine(String salesId, int lineId) async {
    // check if the order is already synced
    final isSynced =
        await (select(salesLineEntity)..where(
              (tbl) => tbl.salesId.equals(salesId) & tbl.syncStatus.equals(1),
            ))
            .getSingleOrNull();
    // Throw an error if the order is already synced
    if (isSynced != null) {
      throw const Failure(
        message: 'The order is already synced and cannot be modified.',
      );
    }
    // Delete the item
    final query =
        await (delete(salesLineEntity)..where(
              (tbl) => tbl.salesId.equals(salesId) & tbl.lineId.equals(lineId),
            ))
            .go();

    return query;
  }
}
