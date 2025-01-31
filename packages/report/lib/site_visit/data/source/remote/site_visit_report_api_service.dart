import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:dio/dio.dart';
import 'package:report/site_visit/data/dto/response/this_month_site_visit_report_response.dart';
import 'package:report/site_visit/data/dto/response/to_day_site_visit_report_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'site_visit_report_api_service.g.dart';

final siteVisitReportApiProvider = Provider<SiteVisitReportApiService>((ref) {
  return SiteVisitReportApiService(ref.watch(networkServiceProvider));
});

@RestApi(
  parser: Parser.FlutterCompute,
)
abstract class SiteVisitReportApiService {
  factory SiteVisitReportApiService(Dio dio) => _SiteVisitReportApiService(dio);

  @GET(toDaySiteVisitReportEndPoint)
  Future<ToDaySiteVisitReportResponse> toDaySiteVisitReport(
    @Query('salesPersonCode') String salesPersonCode,
  );

  @GET(thisMonthSiteVisitReportEndPoint)
  Future<ThisMonthSiteVisitReportResponse> getMonthlyUniqueSiteVisitReport(
    @Query('salesPersonCode') String salesPersonCode,
  );
}
