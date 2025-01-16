import 'dart:io';

import 'package:common/exception/failure.dart';
import 'package:merchandiser/features/photo/application/imerchandiser_photo_service.dart';
import 'package:merchandiser/features/photo/data/repository/imerchandiser_photo_repository.dart';
import 'package:merchandiser/features/photo/data/repository/merchandiser_photo_repository.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final merchandiserPhotoServiceProvider =
    Provider<IMerchandiserPhotoService>((ref) {
  final merchandiserPhotoRepository =
      ref.watch(merchandiserPhotoRepositoryProvider);

  return MerchandiserPhotoService(merchandiserPhotoRepository);
});

final class MerchandiserPhotoService implements IMerchandiserPhotoService {
  final IMerchandiserPhotoRepository _merchandiserPhotoRepository;

  MerchandiserPhotoService(this._merchandiserPhotoRepository);

  @override
  Future<Result<String, Failure>> uploadMerchandiserPhoto({
    required File photo,
    required String deviceId,
    required String salesPersonCode,
    required String customerId,
    required String customerName,
    required String customerAddress,
    required String transDate,
    required String companyCode,
  }) async {
    try {
      final result = await _merchandiserPhotoRepository.uploadMerchandiserPhoto(
        photo: photo,
        deviceId: deviceId,
        salesPersonCode: salesPersonCode,
        customerId: customerId,
        customerName: customerName,
        customerAddress: customerAddress,
        transDate: transDate,
        companyCode: companyCode,
      );

      return Success(result.data);
    } on Failure catch (e) {
      return Error(e);
    } catch (e) {
      return Error(Failure(message: e.toString()));
    }
  }

  @override
  Future<Map<String, String>> getAllSetting() async {
    try {
      return await _merchandiserPhotoRepository.getAllSettings();
    } catch (_) {
      rethrow;
    }
  }
}
