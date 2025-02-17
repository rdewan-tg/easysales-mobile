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
    ref.onDispose(
      () {
        _streamProductsSubscription?.cancel();
        _streamPricesSubscription?.cancel();
        _subscriptionSearchProductHistory?.cancel();
      },
    );

    return ProductState();
  }

  Future<void> importProduct() async {
    state = state.copyWith(errorMsg: null, isLoading: true);
    // get the setting from the database
    final setting = await ref.read(productServiceProvider).getAllSettings();
    // get the companyCode from map
    final String companyCode = setting['companyCode'] ?? 'SGMA';

    final result =
        await ref.read(productServiceProvider).getProducts(companyCode);
    result.when((data) {
      watchProducts();
      state = state.copyWith(isLoading: false);
    }, (error) {
      watchProducts();
      state = state.copyWith(isLoading: false, errorMsg: error.message);
    });
  }

  Future<void> importProductPrice() async {
    state = state.copyWith(errorMsg: null, isLoading: true);
    // get the setting from the database
    final setting = await ref.read(productServiceProvider).getAllSettings();
    // get the companyCode from map
    final String companyCode = setting['companyCode'] ?? 'SGMA';

    final result =
        await ref.read(productServiceProvider).getPrices(companyCode);
    result.when((data) {
      watchPrices();
      state = state.copyWith(isLoading: false);
    }, (error) {
      watchPrices();
      state = state.copyWith(isLoading: false, errorMsg: error.message);
    });
  }

  Future<void> watchProducts() async {
    final searchQuery = state.searchQuery;
    _streamProductsSubscription =
        ref.watch(productServiceProvider).watchProducts(searchQuery).listen(
      (data) {
        state = state.copyWith(products: data, lastSearchQuery: searchQuery);
      },
      onError: (error) {
        state = state.copyWith(errorMsg: error.toString());
      },
    );
  }

  Future<void> watchPrices() async {
    _streamPricesSubscription =
        ref.watch(productServiceProvider).watchPrices(state.searchQuery).listen(
      (data) {
        state = state.copyWith(prices: data);
      },
      onError: (error) {
        state = state.copyWith(errorMsg: error.toString());
      },
    );
  }

  Future<void> clearSearchProduct() async {
    state = state.copyWith(
      searchQuery: '',
      lastSearchQuery: '',
    );
  }

  Future<void> setSearchProductQuery(String value) async {
    state = state.copyWith(searchQuery: value);
  }

  Future<void> setSearchHistory(String key) async {
    ref.read(productServiceProvider).insertOrUpdateSearchProductHistory(key);
  }

  Future<void> watchSearchProductHistory() async {
    // Start listening stream
    _subscriptionSearchProductHistory =
        ref.watch(productServiceProvider).watchSearchProductHistory().listen(
      (data) {
        final history = data.map((e) => e.key).toList();
        state = state.copyWith(searchHistory: history);
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
    final result =
        await ref.read(productServiceProvider).deleteAllSearchProductHistory();

    result.when((success) {
      state = state.copyWith(
        searchQuery: '',
        lastSearchQuery: '',
        searchHistory: [],
        totalSearchProductHistoryCleared: success,
        isSearchProductHistoryCleared: true,
      );
    }, (error) {
      state = state.copyWith(errorMsg: error.message);
    });
  }

  int? getTotalSearchHistoryCleared() => state.totalSearchProductHistoryCleared;
}
