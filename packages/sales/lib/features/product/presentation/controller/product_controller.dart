import 'dart:async';

import 'package:core/data/local/db/app_database.dart';
import 'package:sales/features/product/application/product_service.dart';
import 'package:sales/features/product/presentation/state/product_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productControllerProvider =
    NotifierProvider<ProductController, ProductState>(ProductController.new);

class ProductController extends Notifier<ProductState> {
  StreamSubscription<List<ProductEntityData>>? _streamProductsSubscription;
  StreamSubscription<List<ProductPriceEntityData>>? _streamPricesSubscription;
  StreamSubscription<List<SearchProductHistoryEntityData>>?
  _subscriptionSearchProductHistory;

  @override
  ProductState build() {
    ref.onDispose(() {
      _streamProductsSubscription?.cancel();
      _streamPricesSubscription?.cancel();
      _subscriptionSearchProductHistory?.cancel();
    });

    return ProductState();
  }

  Future<void> getSettings() async {
    // get the setting from the database
    final settings = await ref.read(productServiceProvider).getAllSettings();
    state = state.copyWith(settings: settings);
  }

  Future<void> importProduct() async {
    state = state.copyWith(
      errorMsg: null,
      isLoading: true,
      isProductImported: false,
    );
    // get the setting from the database
    final setting = await ref.read(productServiceProvider).getAllSettings();
    // get the companyCode from map
    final String companyCode = setting['companyCode'] ?? 'SGMA';

    final result = await ref
        .read(productServiceProvider)
        .getProducts(companyCode);
    result.when(
      (data) {
        // watch the total product imported
        watchTotalProductImported();
        // watch the products
        watchProducts();
        state = state.copyWith(isLoading: false, isProductImported: data);
      },
      (error) {
        watchProducts();
        state = state.copyWith(isLoading: false, errorMsg: error.message);
      },
    );
  }

  Future<void> importProductPrice() async {
    state = state.copyWith(
      errorMsg: null,
      isLoading: true,
      isPriceImported: false,
    );
    // get the setting from the database
    final setting = await ref.read(productServiceProvider).getAllSettings();
    // get the companyCode from map
    final String companyCode = setting['companyCode'] ?? 'SGMA';

    final result = await ref
        .read(productServiceProvider)
        .getPrices(companyCode);
    result.when(
      (data) {
        // watch the total price imported
        watchTotalPriceImported();
        // watch the prices
        watchPrices();
        state = state.copyWith(isLoading: false, isPriceImported: data);
      },
      (error) {
        watchPrices();
        state = state.copyWith(isLoading: false, errorMsg: error.message);
      },
    );
  }

  Future<void> watchProducts() async {
    final searchQuery = state.searchQuery;
    _streamProductsSubscription = ref
        .watch(productServiceProvider)
        .watchProducts(searchQuery)
        .listen(
          (data) {
            state = state.copyWith(
              products: data,
              lastSearchQuery: searchQuery,
            );
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error.toString());
          },
        );
  }

  Future<void> watchPrices() async {
    _streamPricesSubscription = ref
        .watch(productServiceProvider)
        .watchPrices(state.searchQuery)
        .listen(
          (data) {
            state = state.copyWith(prices: data);
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error.toString());
          },
        );
  }

  Future<void> clearSearchProduct() async {
    state = state.copyWith(searchQuery: '', lastSearchQuery: '');
  }

  Future<void> setSearchProductQuery(String value) async {
    state = state.copyWith(searchQuery: value);
  }

  Future<void> setSearchHistory(String key) async {
    ref.read(productServiceProvider).insertOrUpdateSearchProductHistory(key);
  }

  Future<void> watchSearchProductHistory() async {
    // Start listening stream
    _subscriptionSearchProductHistory = ref
        .watch(productServiceProvider)
        .watchSearchProductHistory()
        .listen(
          (data) {
            final history = data.map((e) => e.key).toList();
            state = state.copyWith(searchHistory: history);
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error);
          },
        );
  }

  Future<void> watchTotalProductImported() async {
    ref
        .watch(productServiceProvider)
        .watchTotalProductImported()
        .listen(
          (data) {
            state = state.copyWith(totalProductImported: data);
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error);
          },
        );
  }

  Future<void> watchTotalPriceImported() async {
    ref
        .watch(productServiceProvider)
        .watchTotalPriceImported()
        .listen(
          (data) {
            state = state.copyWith(totalPriceImported: data);
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error);
          },
        );
  }

  Future<void> clearSearchProductHistory() async {
    // update the state
    state = state.copyWith(
      isSearchProductHistoryCleared: false,
      totalSearchProductHistoryCleared: null,
    );
    // clear search history
    final result = await ref
        .read(productServiceProvider)
        .deleteAllSearchProductHistory();

    result.when(
      (success) {
        state = state.copyWith(
          searchQuery: '',
          lastSearchQuery: '',
          searchHistory: [],
          totalSearchProductHistoryCleared: success,
          isSearchProductHistoryCleared: true,
        );
      },
      (error) {
        state = state.copyWith(errorMsg: error.message);
      },
    );
  }

  int? getTotalSearchHistoryCleared() => state.totalSearchProductHistoryCleared;

  Future<void> getProductUom(String itemId, String priceGroup) async {
    try {
      final result = await ref
          .read(productServiceProvider)
          .getProductUom(itemId, priceGroup);
      state = state.copyWith(uom: result);
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString());
    }
  }

  Future<void> getProductPackSize(String itemId, String priceGroup) async {
    try {
      final result = await ref
          .read(productServiceProvider)
          .getProductPackSize(itemId, priceGroup);
      state = state.copyWith(packSize: result);
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString());
    }
  }

  Future<void> getProductDetail(
    String itemId,
    String priceGroup,
    String packSize,
    String uom,
  ) async {
    try {
      final result = await ref
          .read(productServiceProvider)
          .getProductDetail(itemId, priceGroup, packSize, uom);
      state = state.copyWith(price: result);
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString());
    }
  }

  Future<void> setQuantity(int quantity) async {
    state = state.copyWith(quantity: quantity);
  }

  ProductPriceEntityData? getPrice() => state.price;

  ProductEntityData? getProduct(String itemId) =>
      state.products.firstWhere((item) => item.itemId == itemId);

  Future<ProductEntityData?> getProductByItemId(String itemId) async {
    final product = await ref
        .read(productServiceProvider)
        .getProductByItemId(itemId);
    return product;
  }

  String getProductName(String itemId) =>
      state.products.firstWhere((item) => item.itemId == itemId).productName;

  String getDeviceId() => state.settings['deviceId'] ?? '-';

  Future<void> clearState() async {
    state = state.copyWith(quantity: 0, price: null);
  }

  Future<void> clearIsProductImported() async {
    await Future.delayed(const Duration(seconds: 5));
    state = state.copyWith(isProductImported: false);
  }

  Future<void> clearIsPriceImported() async {
    await Future.delayed(const Duration(seconds: 5));
    state = state.copyWith(isPriceImported: false);
  }

  void clearTotalProductImported() {
    state = state.copyWith(totalProductImported: 0);
  }

  void clearTotalPriceImported() {
    state = state.copyWith(totalPriceImported: 0);
  }
}
