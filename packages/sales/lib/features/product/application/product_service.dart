import 'dart:isolate';

import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:sales/features/product/application/iproduct_service.dart';
import 'package:sales/features/product/data/dto/product_price_response.dart';
import 'package:sales/features/product/data/dto/product_response.dart';
import 'package:sales/features/product/data/repository/iproduct_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/product/data/repository/product_repository.dart';

final productServiceProvider = Provider<IProductService>((ref) {
  final productRepository = ref.watch(productRepositoryProvider);

  return ProductService(productRepository);
});

final class ProductService implements IProductService {
  final IProductRepository _productRepository;

  ProductService(this._productRepository);

  @override
  Future<Result<bool, Failure>> getProducts(String companyCode) async {
    try {
      // get the data from api
      final response = await _productRepository.getProducts(companyCode);
      // map the data to DB entity
      final data = await Isolate.run(() => _mapToProductEntity(response));
      // insert to local DB
      await _productRepository.insertOrUpdateProduct(data);
      // return
      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e) {
      return Error(Failure(message: e.toString()));
    }
  }

  @override
  Future<Result<bool, Failure>> getPrices(String companyCode) async {
    try {
      // get the data from api
      final response = await _productRepository.getPrices(companyCode);
      // map the data to DB entity
      final data = await Isolate.run(() => _mapToProductPriceEntity(response));
      // insert to local DB
      await _productRepository.insertOrUpdatePrice(data);
      // return
      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e) {
      return Error(Failure(message: e.toString()));
    }
  }

  @override
  Stream<List<ProductEntityData>> watchProducts(String? searchQuery) {
    return _productRepository.watchProducts(searchQuery);
  }

  @override
  Stream<List<ProductPriceEntityData>> watchPrices(String? searchQuery) {
    return _productRepository.watchPrices(searchQuery);
  }

  @override
  Future<Map<String, String>> getAllSettings() async {
    try {
      return await _productRepository.getAllSettings();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Result<int, Failure>> deleteAllSearchProductHistory() async {
    try {
      final result = await _productRepository.deleteAllSearchProductHistory();

      return Result.success(result);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(
        Failure(
          message: e.toString(),
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<void> insertOrUpdateSearchProductHistory(String key) async {
    try {
      await _productRepository.insertOrUpdateSearchProductHistory(key);
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Stream<List<SearchProductHistoryEntityData>> watchSearchProductHistory() {
    return _productRepository.watchSearchProductHistory();
  }
}

// top level function for isolate
List<ProductEntityData> _mapToProductEntity(ProductResponse response) {
  final data = response.data;
  return data.map(
    (e) {
      return ProductEntityData(
        id: e.id,
        productId: e.productId,
        itemId: e.itemId,
        productName: e.productName,
        description: e.description,
        category: e.category,
        barcode: e.barcode,
        itemGroup: e.itemGroup,
        packSize: e.packSize ?? '-',
        salesUnit: e.salesUnit,
        unitPrice: double.parse(e.unitPrice),
        image: e.image,
        itemDiscountGroup: e.itemDiscountGroup,
        itemFOCGroup: e.itemFocGroup,
        inventDimId: e.inventDimId,
        status: e.status,
        companyCode: e.companyCode,
        companyId: e.companyId,
      );
    },
  ).toList();
}

// top level function for isolate
List<ProductPriceEntityData> _mapToProductPriceEntity(
  ProductPriceResponse response,
) {
  final data = response.data;
  return data.map(
    (e) {
      return ProductPriceEntityData(
        id: e.id,
        productId: e.productId,
        itemId: e.itemId,
        packSize: e.packSize ?? '-',
        fromDate: e.fromDate,
        toDate: e.toDate,
        unitPrice: double.parse(e.unitPrice),
        salesUnit: e.salesUnit,
        currencyCode: e.currencyCode,
        priceGroup: e.priceGroup,
        recId: e.recId,
        companyId: e.companyId,
      );
    },
  ).toList();
}
