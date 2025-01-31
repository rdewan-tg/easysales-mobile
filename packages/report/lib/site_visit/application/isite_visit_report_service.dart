import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';
import 'package:report/site_visit/data/dto/response/this_month_site_visit_report_response.dart';
import 'package:report/site_visit/data/dto/response/to_day_site_visit_report_response.dart';

abstract interface class ISiteVisitReportService {
  Future<Result<ToDaySiteVisitReportData, Failure>> toDaySiteVisitReport(
    String salesPersonCode,
  );

  Future<Result<ThisMonthSiteVisitReportData, Failure>>
      thisMonthSiteVisitReport(String salesPersonCode);

  Future<Map<String, String>> getAllSettings();
}
