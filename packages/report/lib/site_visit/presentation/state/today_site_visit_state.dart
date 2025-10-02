import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:report/site_visit/data/dto/response/this_month_site_visit_report_response.dart';
import 'package:report/site_visit/data/dto/response/to_day_site_visit_report_response.dart';

part 'today_site_visit_state.freezed.dart';

@freezed
abstract class TodaySiteVisitState with _$TodaySiteVisitState {
  factory TodaySiteVisitState({
    @Default(0) int total,
    @Default(false) bool isLoadingTodayVisit,
    @Default(false) bool isLoadingThisMonthVisit,
    @Default([]) List<ToDaySiteVisitDetail> todayVisitDetails,
    @Default([]) List<ThisMonthSiteVisitDetail> thisMonthVisitDetails,
    @Default(0) int todayTotalVisits,
    @Default(0) int thisMonthTotalVisits,
    String? errorMsg,
  }) = _TodaySiteVisitState;
}
