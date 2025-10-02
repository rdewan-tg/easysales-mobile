import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_order_response.freezed.dart';
part 'delete_order_response.g.dart';

@freezed
abstract class DeleteOrderResponse with _$DeleteOrderResponse {
  const factory DeleteOrderResponse({required String status, dynamic data}) =
      _DeleteOrderResponse;

  factory DeleteOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteOrderResponseFromJson(json);
}
