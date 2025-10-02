import 'package:freezed_annotation/freezed_annotation.dart';

part 'capture_image_state.freezed.dart';

@freezed
abstract class CaptureImageState with _$CaptureImageState {
  factory CaptureImageState({
    @Default(false) bool isLoading,
    @Default(false) bool isUploading,
    @Default(false) bool isImageUploaded,
    @Default({}) Map<String, String> settings,
    @Default(1) int androidSdkInt,
    String? errorMsg,
  }) = _CaptureImageState;
}
