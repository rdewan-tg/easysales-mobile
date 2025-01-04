import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:merchandiser/features/photo/presentation/state/capture_image_state.dart';

final captureImageControllerProvider = AutoDisposeNotifierProvider<CaptureImageController,CaptureImageState >(CaptureImageController.new);

class CaptureImageController extends AutoDisposeNotifier<CaptureImageState>{
  @override
  CaptureImageState build() {
    return CaptureImageState();
  }

  Future<void> uploadImage() async {}

  Future<void> uploadVideo() async {}
  

  Future<void> setIsCapturing() async {
    state = state.copyWith(isCapturing: true);
  }

  Future<void> setIsNotCapturing() async {
    state = state.copyWith(isCapturing: false);
  }
}