import 'package:common/exception/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home/application/ihome_report_service.dart';
import 'package:home/data/dto/response/last_3_months_sales_totals_response.dart';
import 'package:home/data/dto/response/top_customers_response.dart';
import 'package:home/data/dto/response/top_selling_products_response.dart';
import 'package:home/data/repository/home_report_repository.dart';
import 'package:home/data/repository/ihome_report_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final homeReportServiceProvider = Provider<IHomeReportService>((ref) {
  return HomeReportService(ref.watch(homeReportRepositoryProvider));
});

final class HomeReportService implements IHomeReportService {
  final IHomeReportRepository _homeReportRepository;

  HomeReportService(this._homeReportRepository);

  @override
  Future<Result<TopSellingProductsData, Failure>> getTopSellingProducts(
    String salesPersonId,
  ) async {
    try {
      final response = await _homeReportRepository.getTopSellingProducts(
        salesPersonId,
      );
      return Success(response.data);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(Failure(message: e.toString(), stackTrace: s));
    }
  }

  @override
  Future<Result<TopCustomersData, Failure>> getTopCustomers(
    String salesPersonId,
  ) async {
    try {
      final response = await _homeReportRepository.getTopCustomers(
        salesPersonId,
      );
      return Success(response.data);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(Failure(message: e.toString(), stackTrace: s));
    }
  }

  @override
  Future<Result<Last3MonthsSalesTotalsData, Failure>> getLast3MonthsSalesTotals(
    String salesPersonId,
  ) async {
    try {
      final response = await _homeReportRepository.getLast3MonthsSalesTotals(
        salesPersonId,
      );
      return Success(response.data);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(Failure(message: e.toString(), stackTrace: s));
    }
  }

  @override
  Future<Map<String, String>> getAllSettings() async {
    try {
      return await _homeReportRepository.getAllSettings();
    } catch (_) {
      rethrow;
    }
  }
}
