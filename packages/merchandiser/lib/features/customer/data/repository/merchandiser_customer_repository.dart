import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/dao/merchandiser_customer_dao.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:dio/dio.dart';
import 'package:merchandiser/features/customer/data/dto/request/merchandiser_customer_response.dart';
import 'package:merchandiser/features/customer/data/repository/imerchandiser_customer_repository.dart';
import 'package:merchandiser/features/customer/data/source/remote/merchandiser_customer_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final merchandiserCustomerRepositoryProvider =
    Provider.autoDispose<IMerchandiserCustomerRepository>((ref) {
  final merchandiserCustomerApi = ref.watch(merchandiserCustomerApiProvider);
  final merchandiserCustomerDao = ref.watch(merchandiserCustomerDaoProvider);
  final settingDao = ref.watch(settingDaoProvider);

  return MerchandiserCustomerRepository(
    merchandiserCustomerApi,
    merchandiserCustomerDao,
    settingDao,
  );
});

final class MerchandiserCustomerRepository
    with DioExceptionMapper
    implements IMerchandiserCustomerRepository {
  final MerchandiserCustomerApi _merchandiserCustomerApi;
  final MerchandiserCustomerDao _merchandiserCustomerDao;
  final SettingDao _settingDao;

  MerchandiserCustomerRepository(
    this._merchandiserCustomerApi,
    this._merchandiserCustomerDao,
    this._settingDao,
  );

  @override
  Future<MerchandiserCustomerResponse> getMerchandiserCustomers(
      String dataAreaId,
    ) async {
    try {
      return await _merchandiserCustomerApi
          .getMerchandiserCustomers(dataAreaId);
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
  Stream<List<MerchandiserCustomerEntityData>> watchAll() {
    return _merchandiserCustomerDao.watchAll();
  }

  @override
  Future<void> insertOrUpdate(List<MerchandiserCustomerEntityData> data) async {
    try {
      return await _merchandiserCustomerDao.insertOrUpdateList(data);
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
}
