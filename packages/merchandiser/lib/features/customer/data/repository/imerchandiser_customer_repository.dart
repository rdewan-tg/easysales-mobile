import 'package:core/data/local/db/app_database.dart';
import 'package:common/dto/customer/customer_response.dart';

abstract interface class IMerchandiserCustomerRepository {
  Future<CustomerResponse> getMerchandiserCustomers(String dataAreaId);

  Future<CustomerResponse> filterMerchandiserCustomers(
    String companyCode,
    String salesPersonId,
  );

  Stream<List<MerchandiserCustomerEntityData>> watchAll(String? searchQuery);

  Stream<List<SearchMerchandiserCustomerHistoryEntityData>>
  watchSearchCustomerHistory();

  Future<void> insertOrUpdate(List<MerchandiserCustomerEntityData> data);

  Future<void> insertOrUpdateSearchMerchandiserCustomerHistory(String key);

  Future<int> deleteAllSearchCustomerHistory();

  Future<Map<String, String>> getAllSettings();

  Stream<int> watchTotalCustomerCount();
}
