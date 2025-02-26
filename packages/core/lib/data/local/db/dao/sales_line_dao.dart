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
    final existingLine = await (select(salesLineEntity)
          ..where(
            (tbl) =>
                tbl.salesId.equals(data.salesId.value) &
                tbl.productId.equals(data.productId.value),
          ))
        .getSingleOrNull();
    // throw an error if the item already exists
    if (existingLine != null) {
      throw const Failure(message: 'Item already exists in the sales order.');
    }
    // add the new item
    return into(salesLineEntity).insert(data);
  }

  Future<int> updateSalesLine(SalesLineEntityCompanion data) =>
      (update(salesLineEntity)
            ..where(
              (tbl) =>
                  tbl.salesId.equals(data.salesId.value) &
                  tbl.lineId.equals(data.lineId.value),
            ))
          .write(data);

  Stream<List<SalesLineEntityData>> watchSalesLineBySalesId(String salesId) {
    final query =
        (select(salesLineEntity)..where((tbl) => tbl.salesId.equals(salesId)))
          ..orderBy(
            [
              (tbl) =>
                  OrderingTerm(expression: tbl.lineId, mode: OrderingMode.asc),
            ],
          );

    return query.watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
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

  Future<int> deleteLine(String salesId, int lineId) async {
    final query = await (delete(salesLineEntity)
          ..where(
            (tbl) => tbl.salesId.equals(salesId) & tbl.lineId.equals(lineId),
          ))
        .go();

    return query;
  }
}
