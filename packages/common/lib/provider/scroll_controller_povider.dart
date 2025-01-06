part of '../common.dart';

final appScrollControllerProvider =
    AutoDisposeNotifierProvider<AppScrollController, ScrollController?>(
  AppScrollController.new,
);

class AppScrollController extends AutoDisposeNotifier<ScrollController?> {
  @override
  ScrollController? build() {
    return null;
  }
}
