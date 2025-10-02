part of '../common.dart';

final bottomNavigationStateProvider =
    NotifierProvider<BottomNavigationState, bool>(BottomNavigationState.new);

class BottomNavigationState extends Notifier<bool> {
  @override
  bool build() {
    return true;
  }

  void setBottomNavigationState(bool value) => state = value;
}
