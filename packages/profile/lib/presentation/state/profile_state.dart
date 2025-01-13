import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) isLoading,
    @Default(false) isAccountDeleted,
    @Default({}) Map<String, String> settings,
    String? errorMsg,
  }) = _ProfileState;
}
