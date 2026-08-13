import 'package:common/exception/failure.dart';
import 'package:home/data/dto/response/last_3_months_sales_totals_response.dart';
import 'package:home/data/dto/response/top_customers_response.dart';
import 'package:home/data/dto/response/top_selling_products_response.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IHomeReportService {
  Future<Result<TopSellingProductsData, Failure>> getTopSellingProducts(
    String salesPersonId,
  );

  Future<Result<TopCustomersData, Failure>> getTopCustomers(
    String salesPersonId,
  );

  Future<Result<Last3MonthsSalesTotalsData, Failure>> getLast3MonthsSalesTotals(
    String salesPersonId,
  );

  Future<Map<String, String>> getAllSettings();
}
