import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home/application/home_report_service.dart';
import 'package:home/presentation/state/home_report_state.dart';

final homeReportControllerProvider =
    NotifierProvider<HomeReportController, HomeReportState>(
      HomeReportController.new,
    );

class HomeReportController extends Notifier<HomeReportState> {
  @override
  HomeReportState build() {
    return HomeReportState();
  }

  Future<void> getTopSellingProducts() async {
    state = state.copyWith(isLoadingTopSellingProducts: true, errorMsg: null);

    final setting = await ref.read(homeReportServiceProvider).getAllSettings();
    final salesPersonId = setting['salesPersonCode'] ?? '';

    final result = await ref
        .read(homeReportServiceProvider)
        .getTopSellingProducts(salesPersonId);

    result.when(
      (success) {
        state = state.copyWith(
          topSellingProducts: [success],
          isLoadingTopSellingProducts: false,
        );
      },
      (error) {
        state = state.copyWith(
          errorMsg: error.message,
          isLoadingTopSellingProducts: false,
        );
      },
    );
  }

  Future<void> getTopCustomers() async {
    state = state.copyWith(isLoadingTopCustomers: true, errorMsg: null);

    final setting = await ref.read(homeReportServiceProvider).getAllSettings();
    final salesPersonId = setting['salesPersonCode'] ?? '';

    final result = await ref
        .read(homeReportServiceProvider)
        .getTopCustomers(salesPersonId);

    result.when(
      (success) {
        state = state.copyWith(
          topCustomers: success,
          isLoadingTopCustomers: false,
        );
      },
      (error) {
        state = state.copyWith(
          errorMsg: error.message,
          isLoadingTopCustomers: false,
        );
      },
    );
  }

  Future<void> getLast3MonthsSalesTotals() async {
    state = state.copyWith(
      isLoadingLast3MonthsSalesTotals: true,
      errorMsg: null,
    );

    final setting = await ref.read(homeReportServiceProvider).getAllSettings();
    final salesPersonId = setting['salesPersonCode'] ?? '';

    final result = await ref
        .read(homeReportServiceProvider)
        .getLast3MonthsSalesTotals(salesPersonId);

    result.when(
      (success) {
        state = state.copyWith(
          last3MonthsSalesTotals: [success],
          isLoadingLast3MonthsSalesTotals: false,
        );
      },
      (error) {
        state = state.copyWith(
          errorMsg: error.message,
          isLoadingLast3MonthsSalesTotals: false,
        );
      },
    );
  }
}
