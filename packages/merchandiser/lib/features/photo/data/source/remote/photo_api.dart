import 'dart:io';

import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:dio/dio.dart';
import 'package:merchandiser/features/photo/data/dto/upload_merchandiser_photo_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'photo_api.g.dart';

final photoApiProvider = Provider<PhotoApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return PhotoApi(dio);
});

@RestApi()
abstract class PhotoApi {
  factory PhotoApi(Dio dio) => _PhotoApi(dio);

  @POST(uploadMerchandiserPhotoEndPoint)
  @MultiPart()
  Future<UploadMerchandiserPhotoResponse> uploadMerchandiserPhoto({
    @Part(name: "file", contentType: 'image/*') required File file,
    @Part(name: "deviceId") required String deviceId,
    @Part(name: "salesPersonCode") required String salesPersonCode,
    @Part(name: "customerId") required String customerId,
    @Part(name: "customerName") required String customerName,
    @Part(name: "customerAddress") required String customerAddress,
    @Part(name: "transDate") required String transDate,
    @Part(name: "companyCode") required String companyCode,
    @Part(name: "customerChain") required String customerChain,
    @Part(name: "location") required String location,
  });
}
