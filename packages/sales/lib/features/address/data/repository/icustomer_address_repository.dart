import 'package:common/dto/address/customer_address_response.dart';
import 'package:core/data/local/db/app_database.dart';

abstract interface class ICustomerAddressRepository {
  Future<CustomerAddressResponse> getCustomerAddresses(
    String dataAreaId,
  );

  Future<CustomerAddressResponse> filterCustomerAddresses(
    String companyCode,
    String salesPersonId,
  );

  Future<Map<String, String>> getAllSettings();

  Future<void> insertOrUpdate(List<CustomerAddressEntityData> data);

  Stream<List<CustomerAddressEntityData>> watchAll(
    String? searchQuery,
  );

  Future<CustomerAddressEntityData> getCustomerAddressByPostalAddress(
    String postalAddress,
  );
}
