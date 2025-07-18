import 'dart:io';

import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:merchandiser/features/photo/data/dto/upload_merchandiser_photo_response.dart';
import 'package:merchandiser/features/photo/data/repository/imerchandiser_photo_repository.dart';
import 'package:merchandiser/features/photo/data/source/remote/photo_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final merchandiserPhotoRepositoryProvider =
    Provider<IMerchandiserPhotoRepository>((ref) {
      final photoApi = ref.watch(photoApiProvider);
      final settingDao = ref.watch(settingDaoProvider);

      return MerchaniserPhotoRepository(photoApi, settingDao);
    });

final class MerchaniserPhotoRepository
    with DioExceptionMapper
    implements IMerchandiserPhotoRepository {
  final PhotoApi _photoApi;
  final SettingDao _settingDao;

  MerchaniserPhotoRepository(this._photoApi, this._settingDao);

  @override
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
  }) {
    try {
      return _photoApi.uploadMerchandiserPhoto(
        file: photo,
        deviceId: deviceId,
        salesPersonCode: salesPersonCode,
        customerId: customerId,
        customerName: customerName,
        customerAddress: customerAddress,
        transDate: transDate,
        companyCode: companyCode,
        customerChain: customerDimension,
        location: location,
      );
    } on DioException catch (e, stackTrace) {
      // Use the mixin to map DioException to Failure
      throw mapDioExceptionToFailure(e, stackTrace);
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<Map<String, String>> getAllSettings() {
    try {
      return _settingDao.getAllSettings();
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }
}
