import 'package:dio/dio.dart';
import 'package:merchandiser/features/customer/data/dto/request/merchandiser_customer_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';

part 'merchandiser_customer_api.g.dart';

final merchandiserCustomerApiProvider =
    Provider.autoDispose<MerchandiserCustomerApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return MerchandiserCustomerApi(dio);
});

@RestApi()
abstract class MerchandiserCustomerApi {
  factory MerchandiserCustomerApi(Dio dio) => _MerchandiserCustomerApi(dio);

  @GET(merchandiserCustomerEndPoint)
  Future<MerchandiserCustomerResponse> getMerchandiserCustomers(
    @Path('DataAreaId') String dataAreaId,
  );
}
