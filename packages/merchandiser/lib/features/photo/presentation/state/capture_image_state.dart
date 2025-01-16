import 'package:freezed_annotation/freezed_annotation.dart';

part 'capture_image_state.freezed.dart';

@freezed
class CaptureImageState with _$CaptureImageState {
  factory CaptureImageState({
    @Default(false) bool isLoading,
    @Default({}) Map<String, String> settings,
    String? errorMsg,
  }) = _CaptureImageState;
}
