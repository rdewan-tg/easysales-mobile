import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool isAccountDeleted,
    @Default({}) Map<String, String> settings,
    String? errorMsg,
  }) = _ProfileState;
}
