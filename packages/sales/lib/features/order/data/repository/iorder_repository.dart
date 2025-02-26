import 'package:core/data/local/db/app_database.dart';

abstract interface class IOrderRepository {
  Future<SalesHeaderEntityData> createSalesHeader(
    SalesHeaderEntityCompanion data,
  );

  Future<SalesHeaderEntityData> updateSalesHeader(
    SalesHeaderEntityCompanion data,
  );

  Future<SalesHeaderEntityData> getSalesHeaderBySalesId(String salesId);

  Stream<List<SalesHeaderEntityData>> watchAllSalesHeader();

  Future<int> createSalesLine(SalesLineEntityCompanion data);

  Future<int> updateSalesLine(SalesLineEntityCompanion data);

  Future<int> deleteLine(String salesId, int lineId);

  Stream<List<SalesLineEntityData>> watchAllSalesLineBySalesId(String salesId);

  Future<int> getOrderRunningNumber();

  Future<void> setOrderRunningNumber(String value);

  Future<int> getMaxLineNumberBySalesId(String salesId);

  Future<Map<String, String>> getAllSettings();
}
