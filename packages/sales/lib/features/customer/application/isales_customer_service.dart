import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';


abstract interface class ISalesCustomerService {
  Future<Result<bool, Failure>> getSalesCustomers(String dataAreaId);

  Stream<List<SalesCustomerEntityData>> watchAll();

  Future<Map<String, String>> getAllSetting();

}