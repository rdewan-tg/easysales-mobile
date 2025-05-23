import 'package:core/data/local/db/app_database.dart';
import 'package:sales/features/product/data/dto/product_price_response.dart';
import 'package:sales/features/product/data/dto/product_response.dart';

abstract interface class IProductRepository {
  Future<ProductPriceResponse> getPrices(String companyCode);

  Future<ProductResponse> getProducts(String companyCode);

  Future<void> insertOrUpdateProduct(List<ProductEntityData> data);

  Future<void> insertOrUpdatePrice(List<ProductPriceEntityData> data);

  Stream<List<ProductEntityData>> watchProducts(
    String? searchQuery,
  );

  Stream<List<ProductPriceEntityData>> watchPrices(
    String? searchQuery,
  );

  Stream<int> watchTotalProductImported();

  Stream<int> watchTotalPriceImported();

  Future<Map<String, String>> getAllSettings();

  Future<void> insertOrUpdateSearchProductHistory(
    String key,
  );

  Future<int> deleteAllSearchProductHistory();

  Stream<List<SearchProductHistoryEntityData>> watchSearchProductHistory();

  Future<List<String>> getProductUom(
    String itemId,
    String priceGroup,
  );

  Future<List<String>> getProductPackSize(
    String itemId,
    String priceGroup,
  );

  Future<ProductPriceEntityData> getProductDetail(
    String itemId,
    String priceGroup,
    String packSize,
    String unit,
  );

  Future<ProductEntityData?> getProductByItemId(String itemId);
}
