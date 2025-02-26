import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';
import 'package:sales/features/order/application/iorder_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  Future<Result<SalesHeaderEntityData, Failure>> getSalesHeaderBySalesId(
    String salesId,
  ) async {
    try {
      final result = await _orderRepository.getSalesHeaderBySalesId(salesId);

      return Result.success(result);
    } on Failure catch (e) {
      return Error(e);
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
}
