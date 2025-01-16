part of '../common.dart';

final bottomNavigationStateProvider =
    AutoDisposeNotifierProvider<BottomNavigationState, bool>(
  BottomNavigationState.new,
);

class BottomNavigationState extends AutoDisposeNotifier<bool> {
  @override
  bool build() {
    return true;
  }

  void setBottomNavigationState(bool value) => state = value;
}
