part of '../../../dashboard.dart';

final dashboardControllerProvider =
    AutoDisposeNotifierProvider<DashboardController, DashboardState>(
  DashboardController.new,
);

final class DashboardController extends AutoDisposeNotifier<DashboardState> {
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
