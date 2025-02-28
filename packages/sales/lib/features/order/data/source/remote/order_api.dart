import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sales/features/order/data/dto/request/sales_header_request.dart';
import 'package:sales/features/order/data/dto/request/sales_line_request.dart';
import 'package:sales/features/order/data/dto/response/sales_header_response.dart';
import 'package:sales/features/order/data/dto/response/sales_line_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'order_api.g.dart';

final orderApiProvider = Provider<OrderApi>((ref) {
  return OrderApi(ref.watch(networkServiceProvider));
});

@RestApi()
abstract class OrderApi {
  factory OrderApi(Dio dio) => _OrderApi(dio);

  @POST(createSalesHeaderEndPoint)
  Future<SalesHeaderResponse> createSalesHeader(
    @Body() SalesHeaderRequest body,
  );

  @POST(createManySalesLineEndPoint)
  Future<SalesLineResponse> createManySalesLine(
    @Body() List<SalesLineRequest> body,
  );
}
