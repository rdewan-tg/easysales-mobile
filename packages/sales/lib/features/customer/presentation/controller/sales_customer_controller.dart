import 'dart:async';

import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/customer/application/sales_customer_service.dart';
import 'package:sales/features/customer/presentation/state/sales_customer_state.dart';

final salesCustomerProvider =
    AutoDisposeNotifierProvider<SalesCustomerController, SalesCustomerState>(
      SalesCustomerController.new,
    );

class SalesCustomerController extends AutoDisposeNotifier<SalesCustomerState> {
  StreamSubscription<int>? _subscriptionTotalCustomerCount;
  StreamSubscription<List<SalesCustomerEntityData>>? _subscriptionSalesCustomer;
  StreamSubscription<List<SearchSalesCustomerHistoryEntityData>>?
  _subscriptionSearchHistory;

  @override
  SalesCustomerState build() {
    ref.onDispose(() {
      _subscriptionSalesCustomer?.cancel();
      _subscriptionSearchHistory?.cancel();
      _subscriptionTotalCustomerCount?.cancel();
    });
    return SalesCustomerState();
  }

  Future<void> importSalesCustomers() async {
    try {
      state = state.copyWith(
        isLoading: true,
        searchQuery: '',
        lastSearchQuery: '',
        isCustomerImported: false,
      );
      // get the setting from the database
      final setting = await ref
          .read(salesCustomerServiceProvider)
          .getAllSetting();
      // get the companyCode from map
      final String companyCode = setting['companyCode'] ?? 'SGMA';
      final String salesPersonId = setting['salesPersonCode'] ?? '';

      // get the merchandiser customers from from api and inset it to the database
      final result = await ref
          .read(salesCustomerServiceProvider)
          .filterSalesCustomers(companyCode, salesPersonId);

      result.when(
        (customers) {
          watchSalesCustomers();
          watchTotalCustomerCount();
          state = state.copyWith(
            isLoading: false,
            isCustomerImported: customers,
          );
        },
        (failure) {
          watchSalesCustomers();
          state = state.copyWith(errorMsg: failure.message);
        },
      );
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> watchSalesCustomers() async {
    final searchQuery = state.searchQuery;
    // Start listening stream
    _subscriptionSalesCustomer = ref
        .watch(salesCustomerServiceProvider)
        .watchAll(searchQuery)
        .listen(
          (customers) {
            state = state.copyWith(
              customers: customers,
              lastSearchQuery: searchQuery,
            );
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error);
          },
        );
  }

  Future<void> watchTotalCustomerCount() async {
    _subscriptionTotalCustomerCount = ref
        .watch(salesCustomerServiceProvider)
        .watchTotalCustomerCount()
        .listen(
          (count) {
            state = state.copyWith(totalCustomerCount: count);
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error);
          },
        );
  }

  Future<void> clearSearch() async {
    state = state.copyWith(searchQuery: '', lastSearchQuery: '');
  }

  Future<void> setSearchQuery(String value) async {
    state = state.copyWith(searchQuery: value);
  }

  Future<void> setSearchHistory(String key) async {
    ref
        .read(salesCustomerServiceProvider)
        .insertOrUpdateSearchSalesCustomerHistory(key);
  }

  Future<void> watchSearchHistory() async {
    // Start listening stream
    _subscriptionSearchHistory = ref
        .watch(salesCustomerServiceProvider)
        .watchSearchCustomerHistory()
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

  Future<void> clearSearchHistory() async {
    // update the state
    state = state.copyWith(
      isSearchHistoryCleared: false,
      totalSearchHistoryCleared: null,
    );
    // clear search history
    final result = await ref
        .read(salesCustomerServiceProvider)
        .deleteAllSearchCustomerHistory();

    result.when(
      (success) {
        state = state.copyWith(
          searchQuery: '',
          lastSearchQuery: '',
          searchHistory: [],
          totalSearchHistoryCleared: success,
          isSearchHistoryCleared: true,
        );
      },
      (error) {
        state = state.copyWith(errorMsg: error.message);
      },
    );
  }

  int? getTotalSearchHistoryCleared() => state.totalSearchHistoryCleared;

  Future<void> clearIsCustomerImported() async {
    await Future.delayed(const Duration(seconds: 5));
    state = state.copyWith(isCustomerImported: false);
  }

  void clearTotalCustomerImported() {
    state = state.copyWith(totalCustomerCount: 0);
  }
}
