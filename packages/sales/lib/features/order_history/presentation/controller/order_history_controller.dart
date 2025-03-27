import 'dart:async';

import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/order_history/application/order_history_service.dart';
import 'package:sales/features/order_history/presentation/state/order_history_state.dart';
import 'package:drift/drift.dart';

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

        final isSynced = data.first.syncStatus == 1;
        state = state.copyWith(
          salesLines: data,
          totalAmount: totalAmount,
          isOrderSynced: isSynced,
        );
      },
      onError: (e, s) {
        state = state.copyWith(errorMsg: e.toString());
      },
    );
  }

  Future<void> cancelOrderHeader(String salesId) async {
    state = state.copyWith(
      isLoading: true,
      errorMsg: null,
      isOrderCancelled: false,
    );

    final salesHeader = SalesHeaderEntityCompanion(
      salesId: Value(salesId),
      syncStatus: const Value(2),
    );

    final result = await ref
        .read(orderHistoryServiceProvider)
        .updateSalesHeader(salesHeader);

    result.when(
      (success) {
        state = state.copyWith(isLoading: false);
        _cancelSalesLine(salesId);
      },
      (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      },
    );
  }

  Future<void> _cancelSalesLine(String salesId) async {
    state = state.copyWith(
      isLoading: true,
      errorMsg: null,
      isOrderCancelled: false,
    );

    final salesLine = SalesLineEntityCompanion(
      salesId: Value(salesId),
      syncStatus: const Value(2),
    );

    final result =
        await ref.read(orderHistoryServiceProvider).updateSalesLine(salesLine);

    result.when(
      (success) {
        state = state.copyWith(isOrderCancelled: true, isLoading: false);
      },
      (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      },
    );
  }

  int getSyncStatus(String salesId) {
    final data =
        state.salesHeaders.where((e) => e.salesId == salesId).firstOrNull;
    return data?.syncStatus ?? 0;
  }

  Future<void> updateSalesLine({
    required String salesId,
    required int lineId,
    required String salesUnit,
    required String packaSize,
    required String salesPrice,
    required String quantity,
    required String lineAmount,
  }) async {
    try {
      // check if the order is already synced and return if true
      if (state.isOrderSynced) return;
      // set salesId
      state = state.copyWith(
        salesId: salesId,
        isLoading: true,
        isItemEdited: false,
        errorMsg: null,
      );

      final salesLine = SalesLineEntityCompanion(
        salesId: Value(salesId),
        lineId: Value(lineId),
        salesUnit: Value(salesUnit),
        packSize: Value(packaSize),
        salesPrice: Value(double.parse(salesPrice)),
        quantity: Value(double.parse(quantity)),
        taxAmount: const Value(0.0),
        lineAmount: Value(double.parse(lineAmount)),
      );

      final result = await ref
          .read(orderHistoryServiceProvider)
          .updateSalesLine(salesLine);

      result.when(
        (data) {
          state = state.copyWith(isItemEdited: true, isLoading: false);
        },
        (error) {
          state = state.copyWith(errorMsg: error.message, isLoading: false);
        },
      );
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString(), isLoading: false);
    }
  }

  String getPriceGroup(String salesId) {
    final data =
        state.salesHeaders.where((e) => e.salesId == salesId).firstOrNull;
    return data?.customerPriceGroup ?? '-';
  }

  String getProductName(String itemId) =>
      state.salesLines.firstWhere((item) => item.itemId == itemId).productName;
}
