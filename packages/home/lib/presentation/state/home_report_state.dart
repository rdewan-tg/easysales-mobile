import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home/data/dto/response/last_3_months_sales_totals_response.dart';
import 'package:home/data/dto/response/top_selling_products_response.dart';
import 'package:home/data/dto/response/top_customers_response.dart';

part 'home_report_state.freezed.dart';

@freezed
abstract class HomeReportState with _$HomeReportState {
  factory HomeReportState({
    @Default(false) bool isLoadingTopSellingProducts,
    @Default(false) bool isLoadingLast3MonthsSalesTotals,
    @Default([]) List<TopSellingProductsData> topSellingProducts,
    @Default(false) bool isLoadingTopCustomers,
    TopCustomersData? topCustomers,
    @Default([]) List<Last3MonthsSalesTotalsData> last3MonthsSalesTotals,
    String? errorMsg,
  }) = _HomeReportState;
}
