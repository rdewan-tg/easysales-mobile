import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/dao/product_dao.dart';
import 'package:core/data/local/db/dao/product_price_dao.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:sales/features/product/data/dto/product_price_response.dart';
import 'package:sales/features/product/data/dto/product_response.dart';
import 'package:sales/features/product/data/repository/iproduct_repository.dart';
import 'package:sales/features/product/data/source/product_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productRepositoryProvider = Provider<IProductRepository>((ref) {
  final productApi = ref.watch(productApiProvider);
  final productDao = ref.watch(productDaoProvider);
  final priceDao = ref.watch(productPriceDaoProvider);
  final settingDao = ref.watch(settingDaoProvider);

  return ProductRepository(productApi, productDao, priceDao, settingDao);
});

final class ProductRepository
    with DioExceptionMapper
    implements IProductRepository {
  final ProductApi _productApi;
  final ProductDao _productDao;
  final ProductPriceDao _priceDao;
  final SettingDao _settingDao;

  ProductRepository(
    this._productApi,
    this._productDao,
    this._priceDao,
    this._settingDao,
  );

  @override
  Future<ProductResponse> getProducts(String companyCode) async {
    try {
      return await _productApi.getProducts(companyCode);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<ProductPriceResponse> getPrices(String companyCode) async {
    try {
      return await _productApi.getPrices(companyCode);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insertOrUpdateProduct(List<ProductEntityData> data) async {
    try {
      return _productDao.insertOrUpdateList(data);
    } catch (e, s) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }

  @override
  Future<void> insertOrUpdatePrice(List<ProductPriceEntityData> data) async {
    try {
      return _priceDao.insertOrUpdateList(data);
    } catch (e, s) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }

  @override
  Stream<List<ProductEntityData>> watchProducts(String? searchQuery) {
    return _productDao.watchAll(searchQuery: searchQuery);
  }

  @override
  Stream<List<ProductPriceEntityData>> watchPrices(String? searchQuery) {
    return _priceDao.watchAll(searchQuery: searchQuery);
  }

  @override
  Future<Map<String, String>> getAllSettings() {
    try {
      return _settingDao.getAllSettings();
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }
}
