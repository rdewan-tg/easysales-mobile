import 'dart:async';

import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/order_history/application/order_history_service.dart';
import 'package:sales/features/order_history/presentation/state/order_history_state.dart';

final orderHistoryControllerProvider =
    AutoDisposeNotifierProvider<OrderHistoryController, OrderHistoryState>(
  OrderHistoryController.new,
);

class OrderHistoryController extends AutoDisposeNotifier<OrderHistoryState> {
  StreamSubscription<List<SalesHeaderEntityData>>? _subscriptionSalesHeaders;
  StreamSubscription<List<SalesLineEntityData>>? _subscriptionLines;

  @override
  OrderHistoryState build() {
    ref.onDispose(() {
      _subscriptionSalesHeaders?.cancel();
      _subscriptionLines?.cancel();
    });

    return OrderHistoryState();
  }

  Future<void> getOrderHistorys() async {
    _subscriptionSalesHeaders =
        ref.watch(orderHistoryServiceProvider).watchAllSalesHeader().listen(
      (data) {
        state = state.copyWith(salesHeaders: data);
      },
      onError: (e, s) {
        state = state.copyWith(errorMsg: e.toString());
      },
    );
  }

  Future<void> getOrderLines(String salesId) async {
    _subscriptionLines = ref
        .watch(orderHistoryServiceProvider)
        .watchAllSalesLineBySalesId(salesId)
        .listen(
      (data) {
        double totalAmount = 0;
        for (var element in data) {
          totalAmount += element.lineAmount;
        }
        state = state.copyWith(salesLines: data, totalAmount: totalAmount);
      },
      onError: (e, s) {
        state = state.copyWith(errorMsg: e.toString());
      },
    );
  }
}
