import 'package:dio/dio.dart';
import 'package:common/dto/customer/customer_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:flutter/foundation.dart';

part 'merchandiser_customer_api.g.dart';

final merchandiserCustomerApiProvider =
    Provider.autoDispose<MerchandiserCustomerApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return MerchandiserCustomerApi(dio);
});

@RestApi(
  parser: Parser.FlutterCompute,
)
abstract class MerchandiserCustomerApi {
  factory MerchandiserCustomerApi(Dio dio) => _MerchandiserCustomerApi(dio);

  @GET(merchandiserCustomerEndPoint)
  Future<CustomerResponse> getMerchandiserCustomers(
    @Path('DataAreaId') String dataAreaId,
  );

  @GET(filterMerchandiserCustomerEndPoint)
  Future<CustomerResponse> filter(
    @Query('companyCode') String companyCode,
    @Query('salesPersonId') String salesPersonId,
  );
}
