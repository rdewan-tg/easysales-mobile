import 'package:core/data/local/db/app_database.dart';
import 'package:sales/features/order/data/dto/request/sales_header_request.dart';
import 'package:sales/features/order/data/dto/request/sales_line_request.dart';
import 'package:sales/features/order/data/dto/response/sales_header_response.dart';
import 'package:sales/features/order/data/dto/response/sales_line_response.dart';

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

  Future<int> updateSalesLineSyncStatus(SalesLineEntityCompanion data);

  Future<int> deleteLine(String salesId, int lineId);

  Stream<List<SalesLineEntityData>> watchAllSalesLineBySalesId(String salesId);

  Future<List<SalesLineEntityData>> getSalesLineBySalesId(String salesId);

  Future<int> getOrderRunningNumber();

  Future<void> setOrderRunningNumber(String value);

  Future<int> getMaxLineNumberBySalesId(String salesId);

  Future<Map<String, String>> getAllSettings();

  Future<SalesHeaderResponse> syncSalesHeaderToApi(SalesHeaderRequest data);

  Future<SalesLineResponse> syncSalesLineToApi(List<SalesLineRequest> data);
}
