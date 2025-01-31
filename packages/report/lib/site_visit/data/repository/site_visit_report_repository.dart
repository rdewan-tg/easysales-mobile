import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:dio/dio.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:report/site_visit/data/dto/response/this_month_site_visit_report_response.dart';
import 'package:report/site_visit/data/dto/response/to_day_site_visit_report_response.dart';
import 'package:report/site_visit/data/repository/isite_visit_report_repository.dart';
import 'package:report/site_visit/data/source/remote/site_visit_report_api_service.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';

final siteVisitReportRepositoryProvider =
    Provider<ISiteVisitReportRepository>((ref) {
  final settingDao = ref.watch(settingDaoProvider);
  final siteVisitReportApiService = ref.watch(siteVisitReportApiProvider);

  return SiteVisitReportRepository(siteVisitReportApiService, settingDao);
});

final class SiteVisitReportRepository
    with DioExceptionMapper
    implements ISiteVisitReportRepository {
  final SiteVisitReportApiService _siteVisitReportApiService;
  final SettingDao _settingDao;

  SiteVisitReportRepository(this._siteVisitReportApiService, this._settingDao);

  @override
  Future<ToDaySiteVisitReportResponse> toDaySiteVisitReport(
    String salesPersonCode,
  ) async {
    try {
      return await _siteVisitReportApiService
          .toDaySiteVisitReport(salesPersonCode);
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
  Future<ThisMonthSiteVisitReportResponse> thisMonthSiteVisitReport(
    String salesPersonCode,
  ) async {
    try {
      return await _siteVisitReportApiService
          .getMonthlyUniqueSiteVisitReport(salesPersonCode);
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
