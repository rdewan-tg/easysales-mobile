import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:sales/features/customer/data/dto/request/sales_customer_response.dart';
import 'package:flutter/foundation.dart';

part 'sales_customer_api.g.dart';

final salesCustomerApiProvider = Provider.autoDispose<SalesCustomerApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return SalesCustomerApi(dio);
});

@RestApi(
  parser: Parser.FlutterCompute,
)
abstract class SalesCustomerApi {
  factory SalesCustomerApi(Dio dio) => _SalesCustomerApi(dio);

  @GET(salesCustomerEndPoint)
  Future<SalesCustomerResponse> getSalesCustomers(
    @Path('DataAreaId') String dataAreaId,
  );

  @GET(filterSalesCustomerEndPoint)
  Future<SalesCustomerResponse> filter(
    @Query('companyCode') String companyCode,
    @Query('salesPersonId') String salesPersonId,
  );
}
