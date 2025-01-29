import 'dart:isolate';

import 'package:core/data/local/db/app_database.dart';
import 'package:merchandiser/features/address/application/icustomer_address_service.dart';
import 'package:merchandiser/features/address/data/repository/customer_address_repository.dart';
import 'package:merchandiser/features/address/data/repository/icustomer_address_repository.dart';
import 'package:common/dto/address/customer_address_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

final customerAddressServiceProvider = Provider<ICustomerAddressService>((ref) {
  final customerAddressRepository =
      ref.watch(customerAddressRepositoryProvider);

  return CustomerAddressService(customerAddressRepository);
});

final class CustomerAddressService implements ICustomerAddressService {
  final ICustomerAddressRepository _customerAddressRepository;

  CustomerAddressService(this._customerAddressRepository);
  @override
  Future<Map<String, String>> getAllSettings() async {
    try {
      return await _customerAddressRepository.getAllSettings();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Result<bool, Failure>> getCustomerAddresses(String dataAreaId) async {
    try {
      // get the address from api
      final result =
          await _customerAddressRepository.getCustomerAddresses(dataAreaId);
      // map to customer address
      final data =
          await Isolate.run(() => _mapToCustomerAddressEntityList(result));
      // insert to db
      await _customerAddressRepository.insertOrUpdate(data);

      return const Result.success(true);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(
        Failure(
          message: e.toString(),
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Result<bool, Failure>> filterCustomerAddresses(
    String companyCode,
    String salesPersonId,
  ) async {
    try {
      // get the address from api
      final result = await _customerAddressRepository.filterCustomerAddresses(
        companyCode,
        salesPersonId,
      );
      // map to customer address
      final data =
          await Isolate.run(() => _mapToCustomerAddressEntityList(result));
      // insert to db
      await _customerAddressRepository.insertOrUpdate(data);

      return const Result.success(true);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(
        Failure(
          message: e.toString(),
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Stream<List<CustomerAddressEntityData>> watchAll(String? searchQuery) {
    return _customerAddressRepository.watchAll(searchQuery);
  }
}

// top level function for isolate
List<CustomerAddressEntityData> _mapToCustomerAddressEntityList(
  CustomerAddressResponse response,
) {
  return response.data
      .map(
        (e) => CustomerAddressEntityData(
          customerId: e.customerId,
          deliveryName: e.deliveryName ?? '-',
          address: e.address ?? '-',
          salesPersonId: e.salesPersonId ?? '-',
          latitude: double.parse(e.latitude),
          longitude: double.parse(e.longitude),
          postalAddress: e.postalAddress,
          location: e.location,
          isPrimary: e.isPrimary,
          companyCode: e.companyCode,
          companyId: e.companyId,
        ),
      )
      .toList();
}
