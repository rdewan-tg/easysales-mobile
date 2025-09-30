import 'dart:async';

import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/address/application/customer_address_service.dart';
import 'package:sales/features/address/presentation/state/address_state.dart';

final addressControllerProvider =
    NotifierProvider<AddressController, AddressState>(AddressController.new);

class AddressController extends Notifier<AddressState> {
  StreamSubscription<List<CustomerAddressEntityData>>? _subscription;
  StreamSubscription<int>? _totalCustomerAddressCountSubscription;

  @override
  AddressState build() {
    ref.onDispose(() {
      _subscription?.cancel();
      _totalCustomerAddressCountSubscription?.cancel();
    });
    return AddressState();
  }

  Future<void> importCustomerAddresses() async {
    state = state.copyWith(
      isLoading: true,
      errorMsg: null,
      isAddressImported: false,
    );

    // get the setting from the database
    final setting = await ref
        .read(customerAddressServiceProvider)
        .getAllSettings();
    // get the companyCode from map
    final String companyCode = setting['companyCode'] ?? 'SGMA';
    final String salesPersonId = setting['salesPersonCode'] ?? '';

    final result = await ref
        .read(customerAddressServiceProvider)
        .filterCustomerAddresses(companyCode, salesPersonId);
    result.when(
      (success) {
        state = state.copyWith(isLoading: false, isAddressImported: success);
        watchTotalCustomerAddressCount();
      },
      (error) {
        state = state.copyWith(isLoading: false, errorMsg: error.message);
      },
    );
  }

  Future<void> watchCustomerAddress(String query) async {
    // Start listening stream
    _subscription = ref
        .watch(customerAddressServiceProvider)
        .watchAll(query)
        .listen(
          (data) {
            state = state.copyWith(addresses: data);
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error);
          },
        );
  }

  Future<void> watchTotalCustomerAddressCount() async {
    _totalCustomerAddressCountSubscription = ref
        .watch(customerAddressServiceProvider)
        .watchTotalCustomerAddressCount()
        .listen(
          (data) {
            state = state.copyWith(totalCustomerAddressCount: data);
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error);
          },
        );
  }

  Future<void> clearIsAddressImported() async {
    await Future.delayed(const Duration(seconds: 5));
    state = state.copyWith(isAddressImported: false);
  }

  void clearTotalCustomerAddressCount() {
    state = state.copyWith(totalCustomerAddressCount: 0);
  }
}
