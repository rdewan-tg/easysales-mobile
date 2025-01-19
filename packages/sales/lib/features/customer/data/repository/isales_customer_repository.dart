import 'package:core/data/local/db/app_database.dart';
import 'package:sales/features/customer/data/dto/request/sales_customer_response.dart';

abstract interface class ISalesCustomerRepository {
  Future<SalesCustomerResponse> getSalesCustomers(String dataAreaId);

  Stream<List<SalesCustomerEntityData>> watchAll(
    String? searchQuery,
  );

  Future<void> insertOrUpdate(List<SalesCustomerEntityData> data);

  Future<Map<String, String>> getAllSettings();

  Future<void> insertOrUpdateSearchSalesCustomerHistory(
    String key,
  );

  Future<int> deleteAllSearchCustomerHistory();

  Stream<List<SearchSalesCustomerHistoryEntityData>>
      watchSearchCustomerHistory();
}
