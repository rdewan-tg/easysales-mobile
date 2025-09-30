import 'package:report/site_visit/application/site_visit_report_service.dart';
import 'package:report/site_visit/presentation/state/today_site_visit_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final siteVisitControllerProvider =
    NotifierProvider<SiteVisitController, TodaySiteVisitState>(
      SiteVisitController.new,
    );

class SiteVisitController extends Notifier<TodaySiteVisitState> {
  @override
  TodaySiteVisitState build() {
    return TodaySiteVisitState();
  }

  Future<void> toDaySiteVisitReport() async {
    state = state.copyWith(isLoadingTodayVisit: true, errorMsg: null);

    // get the setting from the database
    final setting = await ref
        .read(siteVisitReportServiceProvider)
        .getAllSettings();
    // get the data from map
    final String salesPersonId = setting['salesPersonCode'] ?? '';

    final result = await ref
        .read(siteVisitReportServiceProvider)
        .toDaySiteVisitReport(salesPersonId);

    result.when(
      (success) {
        state = state.copyWith(
          todayTotalVisits: success.totalUniqueVisits,
          todayVisitDetails: success.visitDetails,
          isLoadingTodayVisit: false,
        );
      },
      (error) {
        state = state.copyWith(
          errorMsg: error.message,
          isLoadingTodayVisit: false,
        );
      },
    );
  }

  Future<void> thisMonthSiteVisitReport() async {
    state = state.copyWith(isLoadingThisMonthVisit: true, errorMsg: null);

    // get the setting from the database
    final setting = await ref
        .read(siteVisitReportServiceProvider)
        .getAllSettings();
    // get the data from map
    final String salesPersonId = setting['salesPersonCode'] ?? '';

    final result = await ref
        .read(siteVisitReportServiceProvider)
        .thisMonthSiteVisitReport(salesPersonId);

    result.when(
      (success) {
        state = state.copyWith(
          thisMonthTotalVisits: success.totalUniqueVisits,
          thisMonthVisitDetails: success.visitDetails,
          isLoadingThisMonthVisit: false,
        );
      },
      (error) {
        state = state.copyWith(
          errorMsg: error.message,
          isLoadingThisMonthVisit: false,
        );
      },
    );
  }
}
