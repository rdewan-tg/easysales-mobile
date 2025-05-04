import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

abstract interface class IOrderService {
  Future<Result<SalesHeaderEntityData, Failure>> createSalesHeader(
    SalesHeaderEntityCompanion data,
  );

  Future<int> getLastSalesOrderId(
    String id,
    String prefix,
  );

  Future<Result<SalesHeaderEntityData, Failure>> updateSalesHeader(
    SalesHeaderEntityCompanion data,
  );

  Future<SalesHeaderEntityData> getSalesHeaderBySalesId(
    String salesId,
  );

  Stream<List<SalesHeaderEntityData>> watchAllSalesHeader();

  Future<Result<int, Failure>> createSalesLine(SalesLineEntityCompanion data);

  Future<Result<int, Failure>> updateSalesLine(SalesLineEntityCompanion data);

  Future<int> updateSalesLineSyncStatus(SalesLineEntityCompanion data);

  Stream<List<SalesLineEntityData>> watchAllSalesLineBySalesId(String salesId);

  Future<List<SalesLineEntityData>> getSalesLineBySalesId(String salesId);

  Future<Result<int, Failure>> deleteLine(String salesId, int lineId);

  Future<int> getMaxLineNumberBySalesId(String salesId);

  Future<int> getOrderRunningNumber();

  Future<void> setOrderRunningNumber(String value);

  Future<Map<String, String>> getAllSetting();

  Future<Result<bool, Failure>> syncSalesHeaderToApi(
    SalesHeaderEntityData data,
  );

  Future<Result<bool, Failure>> syncSalesLineApi(
    List<SalesLineEntityData> data,
  );
}
