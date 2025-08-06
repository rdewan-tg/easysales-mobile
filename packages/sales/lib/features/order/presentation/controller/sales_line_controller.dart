import 'dart:async';

import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/order/application/order_service.dart';
import 'package:sales/features/order/presentation/state/sales_line_state.dart';
import 'package:drift/drift.dart';

final salesLineControllerProvider =
    AutoDisposeNotifierProvider<SalesLineController, SalesLineState>(
      SalesLineController.new,
    );

class SalesLineController extends AutoDisposeNotifier<SalesLineState> {
  StreamSubscription<List<SalesLineEntityData>>? _subscriptionSalesLine;
  @override
  SalesLineState build() {
    ref.onDispose(() {
      _subscriptionSalesLine?.cancel();
    });

    return SalesLineState();
  }

  Future<int> getMaxLineNumberBySalesId(String salesId) async {
    final value = await ref
        .read(orderServiceProvider)
        .getMaxLineNumberBySalesId(salesId);

    return value;
  }

  Future<void> createSalesLine({
    required String salesId,
    required ProductPriceEntityData productDetail,
    required ProductEntityData productData,
    required int quantity,
    required String transactionDate,
    required String deviceId,
  }) async {
    try {
      // check if the order is already synced and return if true
      if (state.isOrderSynced) return;
      // set salesId
      state = state.copyWith(
        salesId: salesId,
        isLoading: true,
        isItemAdded: false,
        errorMsg: null,
      );
      // set th line num
      final lineId = await getMaxLineNumberBySalesId(salesId) + 1;
      // calculate the line amount
      final lineAmount =
          double.parse(productDetail.unitPrice.toString()) * quantity;

      final salesLine = SalesLineEntityCompanion(
        salesId: Value(salesId),
        lineId: Value(lineId),
        itemId: Value(productDetail.itemId),
        productId: Value(productDetail.productId),
        productName: Value(productData.productName),
        productDescription: Value(productData.description),
        packSize: Value(productDetail.packSize),
        quantity: Value(double.parse(quantity.toString())),
        salesUnit: Value(productDetail.salesUnit),
        salesPrice: Value(double.parse(productDetail.unitPrice.toString())),
        lineAmount: Value(lineAmount),
        taxAmount: const Value(0.0),
        inventDimId: Value(productData.inventDimId),
        deviceId: Value(deviceId),
        transactionDate: Value(transactionDate),
        syncStatus: const Value(0),
        companyId: Value(productDetail.companyId),
      );

      final result = await ref
          .read(orderServiceProvider)
          .createSalesLine(salesLine);

      result.when(
        (data) {
          state = state.copyWith(isItemAdded: true, isLoading: false);
          //watchSalesLine(salesId);
        },
        (error) {
          state = state.copyWith(errorMsg: error.message, isLoading: false);
        },
      );
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString(), isLoading: false);
    }
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
          .read(orderServiceProvider)
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

  Future<void> watchSalesLine(String salesId) async {
    _subscriptionSalesLine = ref
        .read(orderServiceProvider)
        .watchAllSalesLineBySalesId(salesId)
        .listen(
          (data) {
            if (data.isEmpty) {
              state = state.copyWith(salesLines: []);
            } else {
              state = state.copyWith(
                salesLines: data,
                isOrderSynced: data.first.syncStatus == 1,
              );
            }
          },
          onError: (e, s) {
            state = state.copyWith(errorMsg: e.toString());
          },
        );
  }

  Future<void> deleteLine(String salesId, int lineId) async {
    state = state.copyWith(
      isLoading: true,
      isItemRemoved: false,
      errorMsg: null,
    );
    final result = await ref
        .read(orderServiceProvider)
        .deleteLine(salesId, lineId);
    result.when(
      (data) {
        state = state.copyWith(isItemRemoved: true, isLoading: false);
      },
      (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      },
    );
  }

  double calCulculateTotalAmount() {
    double totalAmount = 0.0;
    for (var element in state.salesLines) {
      totalAmount += element.lineAmount;
    }
    return totalAmount;
  }
}
