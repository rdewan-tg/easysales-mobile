import 'dart:io';

import 'package:merchandiser/features/photo/data/dto/upload_merchandiser_photo_response.dart';

abstract interface class IMerchandiserPhotoRepository {
  Future<Map<String, String>> getAllSettings();

  Future<UploadMerchandiserPhotoResponse> uploadMerchandiserPhoto({
    required File photo,
    required String deviceId,
    required String salesPersonCode,
    required String customerId,
    required String customerName,
    required String customerAddress,
    required String transDate,
    required String companyCode,
    required String customerDimension,
    required String location,
  });
}
