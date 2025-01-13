import 'package:freezed_annotation/freezed_annotation.dart';

part 'capture_image_state.freezed.dart';

@freezed
class CaptureImageState with _$CaptureImageState {
  factory CaptureImageState({
    @Default(false) bool isCapturing,
  }) = _CaptureImageState;
}
