import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home/data/dto/response/last_3_months_sales_totals_response.dart';
import 'package:home/data/dto/response/top_selling_products_response.dart';
import 'package:home/data/dto/response/top_customers_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter/foundation.dart';

part 'home_report_api_service.g.dart';

final homeReportApiProvider = Provider<HomeReportApiService>((ref) {
  return HomeReportApiService(ref.watch(networkServiceProvider));
});

@RestApi(parser: Parser.FlutterCompute)
abstract class HomeReportApiService {
  factory HomeReportApiService(Dio dio) => _HomeReportApiService(dio);

  @GET(topSellingProductsEndPoint)
  Future<TopSellingProductsResponse> getTopSellingProducts(
    @Query('salesPersonId') String salesPersonId,
  );

  @GET(topCustomersEndPoint)
  Future<TopCustomersResponse> getTopCustomers(
    @Query('salesPersonId') String salesPersonId,
  );

  @GET(last3MonthsSalesTotalsEndPoint)
  Future<Last3MonthsSalesTotalsResponse> getLast3MonthsSalesTotals(
    @Query('salesPersonId') String salesPersonId,
  );
}
