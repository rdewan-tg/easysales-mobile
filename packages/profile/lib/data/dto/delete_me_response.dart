import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_me_response.freezed.dart';
part 'delete_me_response.g.dart';

@freezed
class DeleteMeResponse with _$DeleteMeResponse {
  const factory DeleteMeResponse({
    required String status,
    required dynamic data,
  }) = _DeleteMeResponse;

  factory DeleteMeResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteMeResponseFromJson(json);
}
