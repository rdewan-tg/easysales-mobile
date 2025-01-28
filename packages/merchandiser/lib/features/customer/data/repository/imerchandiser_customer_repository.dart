import 'package:core/data/local/db/app_database.dart';
import 'package:merchandiser/features/customer/data/dto/request/merchandiser_customer_response.dart';

abstract interface class IMerchandiserCustomerRepository {
  Future<MerchandiserCustomerResponse> getMerchandiserCustomers(
    String dataAreaId,
  );

  Future<MerchandiserCustomerResponse> filterMerchandiserCustomers(
    String companyCode,
    String salesPersonId,
  );

  Stream<List<MerchandiserCustomerEntityData>> watchAll(
    String? searchQuery,
  );

  Stream<List<SearchMerchandiserCustomerHistoryEntityData>>
      watchSearchCustomerHistory();

  Future<void> insertOrUpdate(List<MerchandiserCustomerEntityData> data);

  Future<void> insertOrUpdateSearchMerchandiserCustomerHistory(
    String key,
  );

  Future<int> deleteAllSearchCustomerHistory();

  Future<Map<String, String>> getAllSettings();
}
