import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

abstract interface class IMerchandiserCustomerService {
  Future<Result<bool, Failure>> getMerchandiserCustomers(String dataAreaId);

  Future<Result<int, Failure>> deleteAllSearchCustomerHistory();

  Stream<List<MerchandiserCustomerEntityData>> watchAll(
    String? searchQuery,
  );

  Stream<List<SearchMerchandiserCustomerHistoryEntityData>>
      watchSearchCustomerHistory();

  Future<Map<String, String>> getAllSetting();

  Future<void> insertOrUpdateSearchMerchandiserCustomerHistory(
    String key,
  );
}
