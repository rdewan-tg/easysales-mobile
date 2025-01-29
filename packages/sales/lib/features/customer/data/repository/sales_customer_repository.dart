import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/dao/sales_customer_dao.dart';
import 'package:core/data/local/db/dao/search_sales_customer_history_dao.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/customer/data/dto/request/sales_customer_response.dart';
import 'package:sales/features/customer/data/repository/isales_customer_repository.dart';
import 'package:sales/features/customer/data/source/remote/sales_customer_api.dart';

final salesCustomerRepositoryProvider =
    Provider.autoDispose<ISalesCustomerRepository>((ref) {
  final salesCustomerApi = ref.watch(salesCustomerApiProvider);
  final salesCustomerDao = ref.watch(salesCustomerDaoProvider);
  final settingDao = ref.watch(settingDaoProvider);
  final searchHistoryDao = ref.watch(searchSalesCustomerHistoryDaoProvider);

  return SalesCustomerRepository(
    salesCustomerApi,
    salesCustomerDao,
    settingDao,
    searchHistoryDao,
  );
});

final class SalesCustomerRepository
    with DioExceptionMapper
    implements ISalesCustomerRepository {
  final SalesCustomerApi _salesCustomerApi;
  final SalesCustomerDao _salesCustomerDao;
  final SettingDao _settingDao;
  final SearchSalesCustomerHistoryDao _searchHistoryDao;

  SalesCustomerRepository(
    this._salesCustomerApi,
    this._salesCustomerDao,
    this._settingDao,
    this._searchHistoryDao,
  );

  @override
  Future<SalesCustomerResponse> getSalesCustomers(
    String dataAreaId,
  ) async {
    try {
      return await _salesCustomerApi.getSalesCustomers(dataAreaId);
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
  Future<SalesCustomerResponse> filterSalesCustomers(
    String companyCode,
    String salesPersonId,
  ) async {
    try {
      return await _salesCustomerApi.filter(companyCode, salesPersonId);
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
  Stream<List<SalesCustomerEntityData>> watchAll(
    String? searchQuery,
  ) {
    return _salesCustomerDao.watchAll(searchQuery);
  }

  @override
  Future<void> insertOrUpdate(List<SalesCustomerEntityData> data) async {
    try {
      return await _salesCustomerDao.insertOrUpdateList(data);
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

  @override
  Future<void> insertOrUpdateSearchSalesCustomerHistory(String key) async {
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
  Stream<List<SearchSalesCustomerHistoryEntityData>>
      watchSearchCustomerHistory() {
    return _searchHistoryDao.watchAll();
  }
}
