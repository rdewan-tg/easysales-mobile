import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/dao/merchandiser_customer_dao.dart';
import 'package:core/data/local/db/dao/search_merchandiser_customer_history_dao.dart';
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
  final searchHistoryDao = ref
      .watch(searchMerchandiserCustomerHistoryDaoProvider); // searchHistoryDao

  return MerchandiserCustomerRepository(
    merchandiserCustomerApi,
    merchandiserCustomerDao,
    settingDao,
    searchHistoryDao,
  );
});

final class MerchandiserCustomerRepository
    with DioExceptionMapper
    implements IMerchandiserCustomerRepository {
  final MerchandiserCustomerApi _merchandiserCustomerApi;
  final MerchandiserCustomerDao _merchandiserCustomerDao;
  final SettingDao _settingDao;
  final SearchMerchandiserCustomerHistoryDao _searchHistoryDao;

  MerchandiserCustomerRepository(
    this._merchandiserCustomerApi,
    this._merchandiserCustomerDao,
    this._settingDao,
    this._searchHistoryDao,
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
  Future<MerchandiserCustomerResponse> filterMerchandiserCustomers(
    String companyCode,
    String salesPersonId,
  ) async {
    try {
      final response =
          await _merchandiserCustomerApi.filter(companyCode, salesPersonId);

      return response;
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
  Stream<List<MerchandiserCustomerEntityData>> watchAll(
    String? searchQuery,
  ) {
    return _merchandiserCustomerDao.watchAll(searchQuery: searchQuery);
  }

  @override
  Stream<List<SearchMerchandiserCustomerHistoryEntityData>>
      watchSearchCustomerHistory() {
    return _searchHistoryDao.watchAll();
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

  @override
  Future<void> insertOrUpdateSearchMerchandiserCustomerHistory(
    String key,
  ) async {
    try {
      await _searchHistoryDao.upsertSearchHistory(key);
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
  Future<int> deleteAllSearchCustomerHistory() async {
    try {
      return await _searchHistoryDao.deleteAll();
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
