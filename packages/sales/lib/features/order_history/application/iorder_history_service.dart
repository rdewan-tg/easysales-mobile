import 'package:core/data/local/db/app_database.dart';

abstract interface class IOrderHistoryService {
  Stream<List<SalesHeaderEntityData>> watchAllSalesHeader();

  Stream<List<SalesLineEntityData>> watchAllSalesLineBySalesId(String salesId);
}
