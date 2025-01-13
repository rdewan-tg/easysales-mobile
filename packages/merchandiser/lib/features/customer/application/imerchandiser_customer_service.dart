import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';


abstract interface class IMerchandiserCustomerService {
  Future<Result<bool, Failure>> getMerchandiserCustomers(String dataAreaId);

  Stream<List<MerchandiserCustomerEntityData>> watchAll();

  Future<Map<String, String>> getAllSetting();

}