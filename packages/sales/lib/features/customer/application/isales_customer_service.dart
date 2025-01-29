import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

abstract interface class ISalesCustomerService {
  Future<Result<bool, Failure>> getSalesCustomers(String dataAreaId);

  Future<Result<bool, Failure>> filterSalesCustomers(
    String companyCode,
    String salesPersonId,
  );

  Stream<List<SalesCustomerEntityData>> watchAll(
    String? searchQuery,
  );

  Future<Map<String, String>> getAllSetting();

  Future<void> insertOrUpdateSearchSalesCustomerHistory(
    String key,
  );

  Stream<List<SearchSalesCustomerHistoryEntityData>>
      watchSearchCustomerHistory();

  Future<Result<int, Failure>> deleteAllSearchCustomerHistory();
}
