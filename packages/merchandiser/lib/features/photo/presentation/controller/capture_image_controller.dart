import 'dart:io';

import 'package:common/common.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:merchandiser/features/photo/application/merchandiser_photo_service.dart';
import 'package:merchandiser/features/photo/presentation/state/capture_image_state.dart';

final captureImageControllerProvider =
    NotifierProvider<CaptureImageController, CaptureImageState>(
  CaptureImageController.new,
);

class CaptureImageController extends Notifier<CaptureImageState> {
  @override
  CaptureImageState build() {
    return CaptureImageState();
  }

  Future<void> getAllSetting() async {
    final settings =
        await ref.read(merchandiserPhotoServiceProvider).getAllSetting();

    state = state.copyWith(settings: settings);
  }

  Future<void> uploadImage({
    required File photo,
    required String customerId,
    required String customerName,
    required String customerAddress,
    required String transDate,
    required String customerDimension,
  }) async {
    try {
      state = state.copyWith(isLoading: true, isImageUploaded: false);

      final deviceId = state.settings['deviceId'] ?? '-';
      final salesPersonCode = state.settings['salesPersonCode'] ?? '-';
      final companyCode = state.settings['companyCode'] ?? '-';

      final result = await ref
          .read(merchandiserPhotoServiceProvider)
          .uploadMerchandiserPhoto(
            photo: photo,
            deviceId: deviceId,
            salesPersonCode: salesPersonCode,
            customerId: customerId,
            customerName: customerName,
            customerAddress: customerAddress,
            transDate: transDate,
            companyCode: companyCode,
            customerDimension: customerDimension,
          );

      result.when(
        (success) {
          state = state.copyWith(
            isLoading: false,
            isImageUploaded: true,
            isUploading: false,
          );
        },
        (error) {
          state = state.copyWith(
            errorMsg: error.message,
            isLoading: false,
            isImageUploaded: false,
            isUploading: false,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString());
    }
  }

  String getTimeZone() => state.settings['timeZone'] ?? '-';

  Future<void> uploadVideo() async {}

  Future<void> setIsCapturing() async {}

  Future<void> setIsNotCapturing() async {
    state = state.copyWith(isLoading: false);
  }

  void setIsUploading(bool value) => state = state.copyWith(isUploading: value);

  Future<void> setBottomNavigationState(bool value) async {
    ref.read(bottomNavigationStateProvider.notifier).state = value;
  }
}
