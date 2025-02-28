import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/order/application/order_service.dart';
import 'package:sales/features/order/presentation/state/sync_order_state.dart';
import 'package:drift/drift.dart';

final syncOrderControllerProvider =
    NotifierProvider.autoDispose<SyncOrderController, SyncOrderState>(
  SyncOrderController.new,
);

class SyncOrderController extends AutoDisposeNotifier<SyncOrderState> {
  @override
  SyncOrderState build() {
    return SyncOrderState();
  }

  Future<void> syncOrder(String salesId) async {
    // sync the order
    state = state.copyWith(isLoading: true, errorMsg: null);
    // get the sales header from the database
    final salesHeader =
        await ref.read(orderServiceProvider).getSalesHeaderBySalesId(salesId);
    // get the sales line from the database
    final salesLine =
        await ref.read(orderServiceProvider).getSalesLineBySalesId(salesId);
    // sync the sales header to the api
    final syncSalesHeader =
        await ref.read(orderServiceProvider).syncSalesHeaderToApi(salesHeader);
    // check if the sync is successful
    if (syncSalesHeader.isSuccess()) {
      // sync the sales line to the api
      final syncSalesLine =
          await ref.read(orderServiceProvider).syncSalesLineApi(salesLine);
      syncSalesLine.when((data) {
        // update the sync status of the sales header and sales line
        _updateOrderStates(salesId);
        state = state.copyWith(isLoading: false, isOrderSynced: true);
      }, (error) {
        state = state.copyWith(isLoading: false, errorMsg: error.message);
      });
    } else {
      // update the state
      state = state.copyWith(
        isLoading: false,
        errorMsg: syncSalesHeader.tryGetError()?.message,
      );
    }
  }

  void _updateOrderStates(String salesId) async {
    // update the sync status of the sales header and sales line
    await ref.read(orderServiceProvider).updateSalesHeader(
          SalesHeaderEntityCompanion(
            salesId: Value(salesId),
            syncStatus: const Value(1),
          ),
        );

    await ref.read(orderServiceProvider).updateSalesLineSyncStatus(
          SalesLineEntityCompanion(
            salesId: Value(salesId),
            syncStatus: const Value(1),
          ),
        );
  }
}
