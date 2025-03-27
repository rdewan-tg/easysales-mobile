import 'package:core/data/local/db/app_database.dart';

abstract interface class IOrderHistoryRepository {
  Stream<List<SalesHeaderEntityData>> watchAllSalesHeader();

  Stream<List<SalesLineEntityData>> watchAllSalesLineBySalesId(String salesId);

  Future<int> updateSalesLine(SalesLineEntityCompanion data);

  Future<SalesHeaderEntityData> updateSalesHeader(
    SalesHeaderEntityCompanion data,
  );
}
