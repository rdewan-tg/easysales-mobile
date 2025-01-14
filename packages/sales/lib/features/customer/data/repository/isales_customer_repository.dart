import 'package:core/data/local/db/app_database.dart';
import 'package:sales/features/customer/data/dto/request/sales_customer_response.dart';

abstract interface class ISalesCustomerRepository {
  Future<SalesCustomerResponse> getSalesCustomers(String dataAreaId);

  Stream<List<SalesCustomerEntityData>> watchAll();

  Future<void> insertOrUpdate(List<SalesCustomerEntityData> data);

  Future<Map<String, String>> getAllSettings();
}
