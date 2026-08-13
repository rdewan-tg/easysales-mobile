import 'package:home/data/dto/response/last_3_months_sales_totals_response.dart';
import 'package:home/data/dto/response/top_selling_products_response.dart';
import 'package:home/data/dto/response/top_customers_response.dart';

abstract interface class IHomeReportRepository {
  Future<TopSellingProductsResponse> getTopSellingProducts(
    String salesPersonId,
  );

  Future<TopCustomersResponse> getTopCustomers(
    String salesPersonId
  );

  Future<Last3MonthsSalesTotalsResponse> getLast3MonthsSalesTotals(
    String salesPersonId
  );

  Future<Map<String, String>> getAllSettings();
}
