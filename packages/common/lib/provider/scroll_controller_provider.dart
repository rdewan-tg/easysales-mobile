part of '../common.dart';

final appScrollControllerProvider =
    NotifierProvider<AppScrollController, ScrollController?>(
      AppScrollController.new,
    );

class AppScrollController extends Notifier<ScrollController?> {
  @override
  ScrollController? build() {
    return null;
  }

  void setScrollController(ScrollController scrollController) {
    state = scrollController;
  }
}
