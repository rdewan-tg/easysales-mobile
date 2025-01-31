import 'dart:io';

import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

abstract interface class IMerchandiserPhotoService {
  Future<Map<String, String>> getAllSetting();

  Future<Result<String, Failure>> uploadMerchandiserPhoto({
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
