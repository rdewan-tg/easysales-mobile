import 'dart:isolate';

import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';
import 'package:sales/features/order/application/iorder_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/order/data/dto/request/sales_header_request.dart';
import 'package:sales/features/order/data/dto/request/sales_line_request.dart';
import 'package:sales/features/order/data/repository/iorder_repository.dart';
import 'package:sales/features/order/data/repository/order_repository.dart';

final orderServiceProvider = Provider<IOrderService>((ref) {
  return OrderService(ref.watch(orderRepositoryProvider));
});

final class OrderService implements IOrderService {
  final IOrderRepository _orderRepository;

  OrderService(this._orderRepository);

  @override
  Future<Result<SalesHeaderEntityData, Failure>> createSalesHeader(
    SalesHeaderEntityCompanion data,
  ) async {
    try {
      final result = await _orderRepository.createSalesHeader(data);

      return Result.success(result);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<int, Failure>> createSalesLine(
    SalesLineEntityCompanion data,
  ) async {
    try {
      final result = await _orderRepository.createSalesLine(data);

      return Result.success(result);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<SalesHeaderEntityData> getSalesHeaderBySalesId(
    String salesId,
  ) async {
    try {
      final result = await _orderRepository.getSalesHeaderBySalesId(salesId);

      return result;
    } on Failure catch (_) {
      rethrow;
    }
  }

  @override
  Future<Result<SalesHeaderEntityData, Failure>> updateSalesHeader(
    SalesHeaderEntityCompanion data,
  ) async {
    try {
      final result = await _orderRepository.updateSalesHeader(data);

      return Result.success(result);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<int, Failure>> updateSalesLine(
    SalesLineEntityCompanion data,
  ) async {
    try {
      final result = await _orderRepository.updateSalesLine(data);

      return Result.success(result);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Stream<List<SalesHeaderEntityData>> watchAllSalesHeader() {
    return _orderRepository.watchAllSalesHeader();
  }

  @override
  Stream<List<SalesLineEntityData>> watchAllSalesLineBySalesId(String salesId) {
    return _orderRepository.watchAllSalesLineBySalesId(salesId);
  }

  @override
  Future<int> getOrderRunningNumber() async {
    try {
      return await _orderRepository.getOrderRunningNumber();
    } on Failure catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> setOrderRunningNumber(String value) async {
    try {
      return await _orderRepository.setOrderRunningNumber(value);
    } on Failure catch (_) {
      rethrow;
    }
  }

  @override
  Future<Map<String, String>> getAllSetting() async {
    try {
      return await _orderRepository.getAllSettings();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<int> getMaxLineNumberBySalesId(String salesId) async {
    try {
      final result = await _orderRepository.getMaxLineNumberBySalesId(salesId);

      return result;
    } on Failure catch (_) {
      rethrow;
    }
  }

  @override
  Future<Result<int, Failure>> deleteLine(String salesId, int lineId) async {
    try {
      final result = await _orderRepository.deleteLine(salesId, lineId);

      return Success(result);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<Result<bool, Failure>> syncSalesHeaderToApi(
    SalesHeaderEntityData data,
  ) async {
    try {
      final result = await Isolate.run(() => _mapToSalesHeaderRequest(data));
      await _orderRepository.syncSalesHeaderToApi(result);

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<Result<bool, Failure>> syncSalesLineApi(
    List<SalesLineEntityData> data,
  ) async {
    try {
      final result = await Isolate.run(() => _mapToSalesLineRequest(data));
      await _orderRepository.syncSalesLineToApi(result);

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<List<SalesLineEntityData>> getSalesLineBySalesId(
    String salesId,
  ) async {
    try {
      final result = await _orderRepository.getSalesLineBySalesId(salesId);

      return result;
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<int> updateSalesLineSyncStatus(SalesLineEntityCompanion data) async {
    try {
      final result = await _orderRepository.updateSalesLineSyncStatus(data);

      return result;
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }
}

// top level function for isolate
SalesHeaderRequest _mapToSalesHeaderRequest(SalesHeaderEntityData data) =>
    SalesHeaderRequest(
      salesId: data.salesId,
      customerId: data.customerId,
      customerName: data.customerName,
      customerAddress: data.customerAddress,
      salesPersonId: data.salesPersonId,
      customerRequisition: data.customerRequisition,
      customerPriceGroup: data.customerPriceGroup,
      note: data.note,
      deliveryAddressLocation: data.deliveryAddressLocation,
      deliveryDate: data.deliveryDate,
      transactionDate: data.transactionDate,
      deviceId: data.deviceId,
      syncStatus: data.syncStatus,
      companyId: data.companyId,
    );

// top level function for isolate
List<SalesLineRequest> _mapToSalesLineRequest(List<SalesLineEntityData> data) =>
    data
        .map(
          (e) => SalesLineRequest(
            id: e.id,
            salesId: e.salesId,
            lineId: e.lineId,
            itemId: e.itemId,
            productId: e.productId,
            productName: e.productName,
            productDescription: e.productDescription,
            packSize: e.packSize,
            quantity: e.quantity,
            salesUnit: e.salesUnit,
            salesPrice: e.salesPrice,
            taxAmount: e.taxAmount,
            lineAmount: e.lineAmount,
            inventDimId: e.inventDimId,
            transactionDate: e.transactionDate,
            deviceId: e.deviceId,
            syncStatus: e.syncStatus,
            companyId: e.companyId,
          ),
        )
        .toList();
