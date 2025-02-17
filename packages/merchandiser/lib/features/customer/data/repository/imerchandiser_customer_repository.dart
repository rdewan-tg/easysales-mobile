import 'package:core/data/local/db/app_database.dart';
import 'package:common/dto/customer/customer_response.dart';

abstract interface class IMerchandiserCustomerRepository {
  Future<CustomerResponse> getMerchandiserCustomers(
    String dataAreaId,
  );

  Future<CustomerResponse> filterMerchandiserCustomers(
    String companyCode,
    String salesPersonId,
  );

  Stream<List<SalesCustomerEntityData>> watchAll(
    String? searchQuery,
  );

  Stream<List<SearchMerchandiserCustomerHistoryEntityData>>
      watchSearchCustomerHistory();

  Future<void> insertOrUpdate(List<SalesCustomerEntityData> data);

  Future<void> insertOrUpdateSearchMerchandiserCustomerHistory(
    String key,
  );

  Future<int> deleteAllSearchCustomerHistory();

  Future<Map<String, String>> getAllSettings();
}
