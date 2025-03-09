import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(false) isLoading,
    @Default('en') String language,
    @Default('light') String themeMode,
    @Default('Asia/Kolkata') String timeZone,
    @Default({}) Map<String, String> settings,
    @Default(0) int orderRunningNumber,
    String? errorMsg,
  }) = _SettingState;
}
