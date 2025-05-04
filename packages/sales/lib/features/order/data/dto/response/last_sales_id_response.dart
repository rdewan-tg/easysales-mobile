import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_sales_id_response.freezed.dart';
part 'last_sales_id_response.g.dart';

@freezed
class LastSalesIdResponse with _$LastSalesIdResponse {
  const factory LastSalesIdResponse({
    required String status,
    required int data,
  }) = _LastSalesIdResponse;

  factory LastSalesIdResponse.fromJson(Map<String, dynamic> json) =>
      _$LastSalesIdResponseFromJson(json);
}
