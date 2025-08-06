import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/sales_header_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'sales_header_dao.g.dart';

final salesHeaderDaoProvider = Provider<SalesHeaderDao>((ref) {
  return SalesHeaderDao(ref.watch(appDatabaseProvider));
});

@DriftAccessor(tables: [SalesHeaderEntity])
class SalesHeaderDao extends DatabaseAccessor<AppDatabase>
    with _$SalesHeaderDaoMixin {
  SalesHeaderDao(super.db);

  Future<SalesHeaderEntityData> addSalesHeader(
    SalesHeaderEntityCompanion data,
  ) async {
    // insert into database
    await into(salesHeaderEntity).insert(data);
    // return the inserted data
    return await getSalesHeaderBySalesId(data.salesId.value);
  }

  Future<SalesHeaderEntityData> updateSalesHeader(
    SalesHeaderEntityCompanion data,
  ) {
    try {
      // update into database
      (update(
        salesHeaderEntity,
      )..where((tbl) => tbl.salesId.equals(data.salesId.value))).write(data);
      // return the updated data
      return getSalesHeaderBySalesId(data.salesId.value);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  Future<SalesHeaderEntityData> getSalesHeaderBySalesId(String salesId) =>
      (select(
        salesHeaderEntity,
      )..where((tbl) => tbl.salesId.equals(salesId))).getSingle();

  Stream<List<SalesHeaderEntityData>> watchAllSalesHeader() {
    final query = select(salesHeaderEntity)
      ..orderBy([
        (tbl) => OrderingTerm(
          expression: tbl.transactionDate,
          mode: OrderingMode.desc,
        ),
        (tbl) => OrderingTerm(expression: tbl.salesId, mode: OrderingMode.desc),
      ]);

    return query.watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }

  Future<int> deleteBySalesId(String salesId) => (delete(
    salesHeaderEntity,
  )..where((tbl) => tbl.salesId.equals(salesId))).go();
}
