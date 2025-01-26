import 'dart:async';

import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:merchandiser/features/address/presentation/controller/address_controller.dart';
import 'package:merchandiser/features/customer/application/merchandiser_customer_service.dart';
import 'package:merchandiser/features/customer/domain/model/merchandiser_customer_address.dart';
import 'package:merchandiser/features/customer/presentation/state/merchandiser_customer_state.dart';

final merchandiserCustomerProvider = AutoDisposeNotifierProvider<
    MerchandiserCustomerController, MerchandiserCustomerState>(
  MerchandiserCustomerController.new,
);

class MerchandiserCustomerController
    extends AutoDisposeNotifier<MerchandiserCustomerState> {
  StreamSubscription<List<MerchandiserCustomerEntityData>>?
      _subscriptionMerchandiserCustomer;
  StreamSubscription<List<SearchMerchandiserCustomerHistoryEntityData>>?
      _subscriptionSearchHistory;

  @override
  MerchandiserCustomerState build() {
    ref.onDispose(() {
      _subscriptionMerchandiserCustomer?.cancel();
      _subscriptionSearchHistory?.cancel();
    });

    return MerchandiserCustomerState();
  }

  Future<void> getMerchandiserCustomers() async {
    try {
      state =
          state.copyWith(isLoading: true, searchQuery: '', lastSearchQuery: '');
      // get the setting from the database
      final setting =
          await ref.read(merchandiserCustomerServiceProvider).getAllSetting();
      // get the companyCode from map
      final dataAreaId = setting['companyCode'] ?? 'SGMA';

      // get the merchandiser customers from from api and inset it to the database
      final result = await ref
          .read(merchandiserCustomerServiceProvider)
          .getMerchandiserCustomers(dataAreaId);

      result.when(
        (customers) {
          // get the customer address from api
          ref.read(addressControllerProvider.notifier).getCustomerAddresses();
          // get the customer from db
          watchMerchandiserCustomers();
          // update the state
          state = state.copyWith(isLoading: false);
        },
        (failure) {
          watchMerchandiserCustomers();
          state = state.copyWith(errorMsg: failure.message, isLoading: false);
        },
      );
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString(), isLoading: false);
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
        state =
            state.copyWith(customers: customers, lastSearchQuery: searchQuery);
      },
      onError: (error) {
        state = state.copyWith(errorMsg: error);
      },
    );
  }

  Future<void> getMerchandiserCustomerAddress() async {
    final addresses = [
      MerchandiserCustomerAddress(
        id: 1,
        customerId: '60326982111-001',
        deliveryName: 'Trendcell Sdn Bhd - Eco Ardence',
        address: 'No.1 Eco Ardence, PT8 Persiaran Setia Alam, Eco Ar...',
        salesPersonId: 'MY-SC_512',
        companyCode: 'MYMA',
        companyId: 2,
      ),
      MerchandiserCustomerAddress(
        id: 2,
        customerId: '60326982111-001',
        deliveryName: 'My Mart Mydin Sdn Bhd',
        address: 'No 2A & 6 Jalan Dataran Velodrom  Batu 4 Jalan Che...',
        salesPersonId: 'MY-SC_512',
        companyCode: 'MYMA',
        companyId: 2,
      ),
      MerchandiserCustomerAddress(
        id: 3,
        customerId: '60326982111-001',
        deliveryName: 'My Mart USJ',
        address: 'G22 Groud Floor Mydin Mall USJ  Lot No 675-676 Per',
        salesPersonId: 'MY-SC_512',
        companyCode: 'MYMA',
        companyId: 2,
      ),
    ];

    state = state.copyWith(addresses: addresses);
  }

  Future<void> clearSearch() async {
    state = state.copyWith(
      searchQuery: '',
      lastSearchQuery: '',
    );
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

    result.when((success) {
      state = state.copyWith(
        searchQuery: '',
        lastSearchQuery: '',
        searchHistory: [],
        totalSearchHistoryCleared: success,
        isSearchHistoryCleared: true,
      );
    }, (error) {
      state = state.copyWith(errorMsg: error.message);
    });
  }

  int? getTotalSearchHistoryCleared() => state.totalSearchHistoryCleared;
}
