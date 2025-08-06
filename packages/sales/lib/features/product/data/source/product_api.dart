import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:sales/features/product/data/dto/product_price_response.dart';
import 'package:sales/features/product/data/dto/product_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';

part 'product_api.g.dart';

final productApiProvider = Provider<ProductApi>((ref) {
  return ProductApi(ref.watch(networkServiceProvider));
});

@RestApi(parser: Parser.FlutterCompute)
abstract class ProductApi {
  factory ProductApi(Dio dio) => _ProductApi(dio);

  @GET(productsEndPoint)
  Future<ProductResponse> getProducts(@Path('DataAreaId') String dataAreaId);

  @GET(pricesEndPoint)
  Future<ProductPriceResponse> getPrices(@Path('DataAreaId') String dataAreaId);
}
