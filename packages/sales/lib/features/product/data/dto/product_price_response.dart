import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_price_response.freezed.dart';
part 'product_price_response.g.dart';

ProductPriceResponse deserializeProductPriceResponse(
  Map<String, dynamic> json,
) => ProductPriceResponse.fromJson(json);

@freezed
abstract class ProductPriceResponse with _$ProductPriceResponse {
  const factory ProductPriceResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "data") required List<ProductPriceData> data,
  }) = _ProductPriceResponse;

  factory ProductPriceResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductPriceResponseFromJson(json);
}

@freezed
abstract class ProductPriceData with _$ProductPriceData {
  const factory ProductPriceData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "productId") required String productId,
    @JsonKey(name: "itemId") required String itemId,
    @JsonKey(name: "packSize") String? packSize,
    @JsonKey(name: "fromDate") required DateTime fromDate,
    @JsonKey(name: "toDate") required DateTime toDate,
    @JsonKey(name: "unitPrice") required String unitPrice,
    @JsonKey(name: "currencyCode") required String currencyCode,
    @JsonKey(name: "salesUnit") required String salesUnit,
    @JsonKey(name: "priceGroup") required String priceGroup,
    @JsonKey(name: "recId") required String recId,
    @JsonKey(name: "companyId") required int companyId,
    @JsonKey(name: "companyCode") required String companyCode,
    @JsonKey(name: "createAt") required DateTime createAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
  }) = _ProductPriceData;

  factory ProductPriceData.fromJson(Map<String, dynamic> json) =>
      _$ProductPriceDataFromJson(json);
}
