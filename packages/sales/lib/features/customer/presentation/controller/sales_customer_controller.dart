import 'dart:async';

import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/customer/application/sales_customer_service.dart';
import 'package:sales/features/customer/presentation/state/sales_customer_state.dart';

final salesCustomerProvider = AutoDisposeNotifierProvider<
    SalesCustomerController, SalesCustomerState>(
  SalesCustomerController.new,
);

class SalesCustomerController
    extends AutoDisposeNotifier<SalesCustomerState> {
  StreamSubscription<List<SalesCustomerEntityData>>? _subscription;

  @override
  SalesCustomerState build() {
    ref.onDispose(() {
      _subscription?.cancel();
    });
    // Start listening to the merchandiser customer stream
    watchSalesCustomers();

    return SalesCustomerState();
  }

  Future<void> getSalesCustomers() async {
    try {
      
      // update the loading state
      state = state.copyWith(isLoading: true);

      // get the setting from the database
      final setting =
          await ref.read(salesCustomerServiceProvider).getAllSetting();
      // get the companyCode from map
      final dataAreaId = setting['companyCode'] ?? 'SGMA';

      // get the merchandiser customers from from api and inset it to the database
      final result = await ref
          .read(salesCustomerServiceProvider)
          .getSalesCustomers(dataAreaId);

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

  Future<void> watchSalesCustomers() async {
    // Start listening to the theme mode stream
    _subscription =
        ref.watch(salesCustomerServiceProvider).watchAll().listen(
      (customers) {
        state = state.copyWith(customers: customers);
      },
      onError: (error) {
        state = state.copyWith(errorMsg: error);
      },
    );
  }
}
