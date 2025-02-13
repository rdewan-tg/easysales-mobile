import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

ProductResponse deserializeProductResponse(Map<String, dynamic> json) =>
    ProductResponse.fromJson(json);

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "data") required List<ProductData> data,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "productId") required String productId,
    @JsonKey(name: "itemId") required String itemId,
    @JsonKey(name: "productName") required String productName,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "barcode") required String barcode,
    @JsonKey(name: "itemGroup") required String itemGroup,
    @JsonKey(name: "packSize") String? packSize,
    @JsonKey(name: "salesUnit") required String salesUnit,
    @JsonKey(name: "unitPrice") required String unitPrice,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "itemDiscountGroup") required String itemDiscountGroup,
    @JsonKey(name: "itemFOCGroup") required String itemFocGroup,
    @JsonKey(name: "inventDimId") required String inventDimId,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "companyCode") required String companyCode,
    @JsonKey(name: "companyId") required int companyId,
    @JsonKey(name: "createAt") required DateTime createAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}
