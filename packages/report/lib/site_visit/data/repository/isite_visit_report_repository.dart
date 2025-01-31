import 'package:report/site_visit/data/dto/response/this_month_site_visit_report_response.dart';
import 'package:report/site_visit/data/dto/response/to_day_site_visit_report_response.dart';

abstract interface class ISiteVisitReportRepository {
  Future<ToDaySiteVisitReportResponse> toDaySiteVisitReport(
    String salesPersonCode,
  );

  Future<ThisMonthSiteVisitReportResponse> thisMonthSiteVisitReport(
    String salesPersonCode,
  );

  Future<Map<String, String>> getAllSettings();
}
