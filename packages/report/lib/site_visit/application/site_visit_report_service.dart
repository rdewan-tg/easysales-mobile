import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:report/site_visit/application/isite_visit_report_service.dart';
import 'package:report/site_visit/data/dto/response/this_month_site_visit_report_response.dart';
import 'package:report/site_visit/data/dto/response/to_day_site_visit_report_response.dart';
import 'package:report/site_visit/data/repository/isite_visit_report_repository.dart';
import 'package:report/site_visit/data/repository/site_visit_report_repository.dart';

final siteVisitReportServiceProvider = Provider<ISiteVisitReportService>((ref) {
  return SiteVisitReportService(ref.watch(siteVisitReportRepositoryProvider));
});

final class SiteVisitReportService implements ISiteVisitReportService {
  final ISiteVisitReportRepository _siteVisitReportRepository;

  SiteVisitReportService(this._siteVisitReportRepository);

  @override
  Future<Result<ToDaySiteVisitReportData, Failure>> toDaySiteVisitReport(
    String salesPersonCode,
  ) async {
    try {
      final response = await _siteVisitReportRepository
          .toDaySiteVisitReport(salesPersonCode);
      return Success(response.data);
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
  Future<Result<ThisMonthSiteVisitReportData, Failure>>
      thisMonthSiteVisitReport(String salesPersonCode) async {
    try {
      final response = await _siteVisitReportRepository
          .thisMonthSiteVisitReport(salesPersonCode);
      return Success(response.data);
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
  Future<Map<String, String>> getAllSettings() async {
    try {
      return await _siteVisitReportRepository.getAllSettings();
    } catch (_) {
      rethrow;
    }
  }
}
