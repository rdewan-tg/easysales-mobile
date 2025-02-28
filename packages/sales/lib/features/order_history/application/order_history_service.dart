import 'package:core/data/local/db/app_database.dart';
import 'package:sales/features/order_history/application/iorder_history_service.dart';
import 'package:sales/features/order_history/data/repository/iorder_history.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/order_history/data/repository/order_history.dart';

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
}
