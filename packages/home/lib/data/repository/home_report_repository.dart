import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home/data/dto/response/last_3_months_sales_totals_response.dart';
import 'package:home/data/dto/response/top_selling_products_response.dart';
import 'package:home/data/dto/response/top_customers_response.dart';
import 'package:home/data/repository/ihome_report_repository.dart';
import 'package:home/data/source/remote/home_report_api_service.dart';

final homeReportRepositoryProvider = Provider<IHomeReportRepository>((ref) {
  final homeReportApiService = ref.watch(homeReportApiProvider);
  final settingDao = ref.watch(settingDaoProvider);

  return HomeReportRepository(homeReportApiService, settingDao);
});

final class HomeReportRepository
    with DioExceptionMapper
    implements IHomeReportRepository {
  final HomeReportApiService _homeReportApiService;
  final SettingDao _settingDao;

  HomeReportRepository(this._homeReportApiService, this._settingDao);

  @override
  Future<TopSellingProductsResponse> getTopSellingProducts(
    String salesPersonId,
  ) async {
    try {
      return await _homeReportApiService.getTopSellingProducts(salesPersonId);
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
  Future<TopCustomersResponse> getTopCustomers(
    String salesPersonId,
  ) async {
    try {
      return await _homeReportApiService.getTopCustomers(salesPersonId);
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
  Future<Last3MonthsSalesTotalsResponse> getLast3MonthsSalesTotals(
    String salesPersonId,
  ) async {
    try {
      return await _homeReportApiService.getLast3MonthsSalesTotals(salesPersonId);
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
}
