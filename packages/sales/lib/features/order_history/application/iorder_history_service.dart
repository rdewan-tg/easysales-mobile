import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

abstract interface class IOrderHistoryService {
  Stream<List<SalesHeaderEntityData>> watchAllSalesHeader();

  Stream<List<SalesLineEntityData>> watchAllSalesLineBySalesId(String salesId);

  Future<Result<int, Failure>> updateSalesLine(SalesLineEntityCompanion data);
}
