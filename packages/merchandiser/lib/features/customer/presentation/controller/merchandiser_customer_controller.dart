import 'dart:async';

import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:merchandiser/features/customer/application/merchandiser_customer_service.dart';
import 'package:merchandiser/features/customer/presentation/state/merchandiser_customer_state.dart';

final merchandiserCustomerProvider = AutoDisposeNotifierProvider<
    MerchandiserCustomerController, MerchandiserCustomerState>(
  MerchandiserCustomerController.new,
);

class MerchandiserCustomerController
    extends AutoDisposeNotifier<MerchandiserCustomerState> {
  StreamSubscription<List<MerchandiserCustomerEntityData>>? _subscription;

  @override
  MerchandiserCustomerState build() {
    ref.onDispose(() {
      _subscription?.cancel();
    });
    // Start listening to the merchandiser customer stream
    watchMerchandiserCustomers();

    return MerchandiserCustomerState();
  }

  Future<void> getMerchandiserCustomers() async {
    try {

      if (state.customers.isNotEmpty) {
        // update the loading state
        state = state.copyWith(isLoading: true);
      }

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
          state = state.copyWith(isLoading: false);
        },
        (failure) {
          state = state.copyWith(errorMsg: failure.message, isLoading: false);
        },
      );
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString(), isLoading: false);
    }
  }

  Future<void> watchMerchandiserCustomers() async {
    // Start listening to the theme mode stream
    _subscription =
        ref.watch(merchandiserCustomerServiceProvider).watchAll().listen(
      (customers) {
        state = state.copyWith(customers: customers);
      },
      onError: (error) {
        state = state.copyWith(errorMsg: error);
      },
    );
  }
}
