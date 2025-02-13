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

  @override
  ProductState build() {
    ref.onDispose(
      () {
        _streamProductsSubscription?.cancel();
        _streamPricesSubscription?.cancel();
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
    _streamProductsSubscription =
        ref.watch(productServiceProvider).watchProducts('').listen(
      (data) {
        state = state.copyWith(products: data);
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

  Future<void> setSearchQuery(String value) async {
    state = state.copyWith(searchQuery: value);
  }

  Future<void> clearSearchQuery() async {
    state = state.copyWith(searchQuery: '');
  }
}
