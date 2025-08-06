import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'upload_merchandiser_photo_response.freezed.dart';
part 'upload_merchandiser_photo_response.g.dart';

UploadMerchandiserPhotoResponse uploadMerchandiserPhotoResponseFromJson(
  String str,
) => UploadMerchandiserPhotoResponse.fromJson(json.decode(str));

String uploadMerchandiserPhotoResponseToJson(
  UploadMerchandiserPhotoResponse data,
) => json.encode(data);

@freezed
class UploadMerchandiserPhotoResponse with _$UploadMerchandiserPhotoResponse {
  const factory UploadMerchandiserPhotoResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "data") required String data,
  }) = _UploadMerchandiserPhotoResponse;

  factory UploadMerchandiserPhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadMerchandiserPhotoResponseFromJson(json);
}
