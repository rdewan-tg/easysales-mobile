import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

abstract interface class IProductService {
  Future<Result<bool, Failure>> getProducts(String companyCode);

  Future<Result<bool, Failure>> getPrices(String companyCode);

  Stream<List<ProductEntityData>> watchProducts(
    String? searchQuery,
  );

  Stream<List<ProductPriceEntityData>> watchPrices(
    String? searchQuery,
  );

  Future<Map<String, String>> getAllSettings();

  Future<void> insertOrUpdateSearchProductHistory(
    String key,
  );

  Stream<List<SearchProductHistoryEntityData>> watchSearchProductHistory();

  Future<Result<int, Failure>> deleteAllSearchProductHistory();

  Future<List<String>> getProductUom(String itemId, String priceGroup);

  Future<List<String>> getProductPackSize(String itemId, String priceGroup);

  Future<ProductPriceEntityData> getProductDetail(
    String itemId,
    String priceGroup,
    String packSize,
    String unit,
  );

  Future<ProductEntityData?> getProductByItemId(String itemId);
}
