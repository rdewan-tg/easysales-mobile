import 'dart:async';

import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:merchandiser/features/customer/application/merchandiser_customer_service.dart';
import 'package:merchandiser/features/customer/presentation/state/merchandiser_customer_state.dart';

final merchandiserCustomerProvider =
    AutoDisposeNotifierProvider<
      MerchandiserCustomerController,
      MerchandiserCustomerState
    >(MerchandiserCustomerController.new);

class MerchandiserCustomerController
    extends AutoDisposeNotifier<MerchandiserCustomerState> {
  StreamSubscription<List<MerchandiserCustomerEntityData>>?
  _subscriptionMerchandiserCustomer;
  StreamSubscription<List<SearchMerchandiserCustomerHistoryEntityData>>?
  _subscriptionSearchHistory;

  StreamSubscription<int>? _subscriptionTotalCustomerCount;

  @override
  MerchandiserCustomerState build() {
    ref.onDispose(() {
      _subscriptionMerchandiserCustomer?.cancel();
      _subscriptionSearchHistory?.cancel();
      _subscriptionTotalCustomerCount?.cancel();
    });

    return MerchandiserCustomerState();
  }

  Future<void> importMerchandiserCustomers() async {
    try {
      state = state.copyWith(
        isLoading: true,
        searchQuery: '',
        lastSearchQuery: '',
        isCustomerImported: false,
      );
      // get the setting from the database
      final setting = await ref
          .read(merchandiserCustomerServiceProvider)
          .getAllSetting();
      // get the companyCode from map
      final String companyCode = setting['companyCode'] ?? 'SGMA';
      final String salesPersonId = setting['salesPersonCode'] ?? '';

      // get the merchandiser customers from from api and inset it to the database
      final result = await ref
          .read(merchandiserCustomerServiceProvider)
          .filterMerchandiserCustomers(companyCode, salesPersonId);

      result.when(
        (customers) {
          // update the total customer count
          watchTotalCustomerCount();
          // get the customer from db
          watchMerchandiserCustomers();
          // update the state
          state = state.copyWith(isCustomerImported: customers);
        },
        (failure) {
          watchMerchandiserCustomers();
          state = state.copyWith(errorMsg: failure.message);
        },
      );
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> watchMerchandiserCustomers() async {
    final searchQuery = state.searchQuery;
    // Start listening stream
    _subscriptionMerchandiserCustomer = ref
        .watch(merchandiserCustomerServiceProvider)
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
    // Start listening stream
    _subscriptionTotalCustomerCount = ref
        .watch(merchandiserCustomerServiceProvider)
        .watchTotalCustomerCount()
        .listen(
          (data) {
            state = state.copyWith(totalCustomerCount: data);
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
        .read(merchandiserCustomerServiceProvider)
        .insertOrUpdateSearchMerchandiserCustomerHistory(key);
  }

  Future<void> getSearchHistory() async {
    // Start listening stream
    _subscriptionSearchHistory = ref
        .watch(merchandiserCustomerServiceProvider)
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
        .read(merchandiserCustomerServiceProvider)
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

  void clearTotalCustomerCount() {
    state = state.copyWith(totalCustomerCount: 0);
  }

  Future<void> getSetting() async {
    final setting = await ref
        .read(merchandiserCustomerServiceProvider)
        .getAllSetting();
    state = state.copyWith(settings: setting);
  }

  bool get isSiteVisitEnabled => state.settings['isSiteVisitEnabled'] == 'true';
}
