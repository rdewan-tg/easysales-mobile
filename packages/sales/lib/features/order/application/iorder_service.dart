import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

abstract interface class IOrderService {
  Future<Result<SalesHeaderEntityData, Failure>> createSalesHeader(
    SalesHeaderEntityCompanion data,
  );

  Future<Result<SalesHeaderEntityData, Failure>> updateSalesHeader(
    SalesHeaderEntityCompanion data,
  );

  Future<Result<SalesHeaderEntityData, Failure>> getSalesHeaderBySalesId(
    String salesId,
  );

  Stream<List<SalesHeaderEntityData>> watchAllSalesHeader();

  Future<Result<int, Failure>> createSalesLine(SalesLineEntityCompanion data);

  Future<Result<int, Failure>> updateSalesLine(SalesLineEntityCompanion data);

  Stream<List<SalesLineEntityData>> watchAllSalesLineBySalesId(String salesId);

  Future<Result<int, Failure>> deleteLine(String salesId, int lineId);

  Future<int> getMaxLineNumberBySalesId(String salesId);

  Future<int> getOrderRunningNumber();

  Future<void> setOrderRunningNumber(String value);

  Future<Map<String, String>> getAllSetting();
}
