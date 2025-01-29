import 'package:dio/dio.dart';
import 'package:common/dto/address/customer_address_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:flutter/foundation.dart';

part 'customer_address_api.g.dart';

final customerAddressApiProvider =
    Provider.autoDispose<CustomerAddressApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return CustomerAddressApi(dio);
});

@RestApi(
  parser: Parser.FlutterCompute,
)
abstract class CustomerAddressApi {
  factory CustomerAddressApi(Dio dio) => _CustomerAddressApi(dio);

  @GET(customerAddressEndpoint)
  Future<CustomerAddressResponse> getCustomerAddresses(
    @Path('DataAreaId') String dataAreaId,
  );

  @GET(filterCustomerAddressEndpoint)
  Future<CustomerAddressResponse> filterCustomerAddresses(
    @Query('companyCode') String companyCode,
    @Query('salesPersonId') String salesPersonId,
  );
}
