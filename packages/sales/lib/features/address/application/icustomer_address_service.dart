import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

abstract interface class ICustomerAddressService {
  Future<Result<bool, Failure>> getCustomerAddresses(String dataAreaId);

  Future<Result<bool, Failure>> filterCustomerAddresses(
    String companyCode,
    String salesPersonId,
  );

  Future<Map<String, String>> getAllSettings();

  Stream<List<CustomerAddressEntityData>> watchAll(
    String? searchQuery,
  );

  Future<CustomerAddressEntityData> getCustomerAddressByPostalAddress(
    String postalAddress,
  );

  Stream<int> watchTotalCustomerAddressCount();
}
