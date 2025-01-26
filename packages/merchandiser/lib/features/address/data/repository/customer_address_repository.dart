import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:core/data/local/db/dao/customer_address_dao.dart';
import 'package:dio/dio.dart';
import 'package:merchandiser/features/address/data/repository/icustomer_address_repository.dart';
import 'package:merchandiser/features/address/data/source/customer_address_api.dart';
import 'package:common/dto/address/customer_address_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final customerAddressRepositoryProvider =
    Provider.autoDispose<ICustomerAddressRepository>((ref) {
  final customerAddressApi = ref.watch(customerAddressApiProvider);
  final settingDao = ref.watch(settingDaoProvider);
  final customerAddressDao = ref.watch(customerAddressDaoProvider);

  return CustomerAddressRepository(
    customerAddressApi,
    settingDao,
    customerAddressDao,
  );
});

final class CustomerAddressRepository
    with DioExceptionMapper
    implements ICustomerAddressRepository {
  final CustomerAddressApi _customerAddressApi;
  final SettingDao _settingDao;
  final CustomerAddressDao _customerAddressDao;

  CustomerAddressRepository(
    this._customerAddressApi,
    this._settingDao,
    this._customerAddressDao,
  );

  @override
  Future<CustomerAddressResponse> getCustomerAddresses(
    String dataAreaId,
  ) async {
    try {
      return await _customerAddressApi.getCustomerAddresses(dataAreaId);
    } on DioException catch (e, stackTrace) {
      // Use the mixin to map DioException to Failure
      throw mapDioExceptionToFailure(e, stackTrace);
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<Map<String, String>> getAllSettings() {
    try {
      return _settingDao.getAllSettings();
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insertOrUpdate(List<CustomerAddressEntityData> data) async {
    try {
      return await _customerAddressDao.insertOrUpdateList(data);
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Stream<List<CustomerAddressEntityData>> watchAll(String? searchQuery) {
    return _customerAddressDao.watchAll(searchQuery: searchQuery);
  }
}
