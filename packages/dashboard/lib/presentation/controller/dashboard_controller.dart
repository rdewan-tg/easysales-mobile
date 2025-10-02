part of '../../../dashboard.dart';

final dashboardControllerProvider =
    NotifierProvider<DashboardController, DashboardState>(
      DashboardController.new,
    );

final class DashboardController extends Notifier<DashboardState> {
  @override
  DashboardState build() {
    return const DashboardState();
  }

  void setPageIndex(int value) {
    state = state.copyWith(pageIndex: value);
  }

  void setIsVisible(bool value) {
    if (state.isVisible == value) return;
    state = state.copyWith(isVisible: value);
  }
}
