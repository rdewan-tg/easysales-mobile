import 'package:core/data/local/db/app_database.dart';
import 'package:common/dto/customer/customer_response.dart';

abstract interface class ISalesCustomerRepository {
  Future<CustomerResponse> getSalesCustomers(String dataAreaId);

  Future<CustomerResponse> filterSalesCustomers(
    String companyCode,
    String salesPersonId,
  );

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

  Future<SalesCustomerEntityData?> getCustomerByCustomerId(
    String customerId,
  );

  Stream<int> watchTotalCustomerCount();
}
