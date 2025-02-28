import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/dao/sales_header_dao.dart';
import 'package:core/data/local/db/dao/sales_line_dao.dart';
import 'package:sales/features/order_history/data/repository/iorder_history.dart';
import 'package:common/exception/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final orderHistoryProvider =
    Provider.autoDispose<IOrderHistoryRepository>((ref) {
  return OrderHistoryRepository(
    ref.watch(salesHeaderDaoProvider),
    ref.watch(salesLineDaoProvider),
  );
});

final class OrderHistoryRepository implements IOrderHistoryRepository {
  final SalesHeaderDao _salesHeaderDao;
  final SalesLineDao _salesLineDao;

  OrderHistoryRepository(this._salesHeaderDao, this._salesLineDao);

  @override
  Stream<List<SalesHeaderEntityData>> watchAllSalesHeader() {
    try {
      return _salesHeaderDao.watchAllSalesHeader();
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Stream<List<SalesLineEntityData>> watchAllSalesLineBySalesId(String salesId) {
    try {
      return _salesLineDao.watchSalesLineBySalesId(salesId);
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }
}
