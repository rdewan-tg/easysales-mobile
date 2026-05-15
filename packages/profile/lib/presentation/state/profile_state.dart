import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:profile/data/dto/get_me_response.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool isAccountDeleted,
    @Default({}) Map<String, String> settings,
    GetMeResponse? profile,
    String? errorMsg,
  }) = _ProfileState;
}
