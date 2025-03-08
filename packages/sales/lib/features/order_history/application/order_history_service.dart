import 'package:core/data/local/db/app_database.dart';
import 'package:sales/features/order_history/application/iorder_history_service.dart';
import 'package:sales/features/order_history/data/repository/iorder_history.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/order_history/data/repository/order_history.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

final orderHistoryServiceProvider = Provider<IOrderHistoryService>((ref) {
  return OrderHistoryService(ref.watch(orderHistoryProvider));
});

final class OrderHistoryService implements IOrderHistoryService {
  final IOrderHistoryRepository _orderHistoryRepository;

  OrderHistoryService(this._orderHistoryRepository);
  @override
  Stream<List<SalesHeaderEntityData>> watchAllSalesHeader() {
    return _orderHistoryRepository.watchAllSalesHeader();
  }

  @override
  Stream<List<SalesLineEntityData>> watchAllSalesLineBySalesId(String salesId) {
    return _orderHistoryRepository.watchAllSalesLineBySalesId(salesId);
  }

  @override
  Future<Result<int, Failure>> updateSalesLine(
    SalesLineEntityCompanion data,
  ) async {
    try {
      final result = await _orderHistoryRepository.updateSalesLine(data);

      return Result.success(result);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}
