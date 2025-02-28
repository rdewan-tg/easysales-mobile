import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_line_request.freezed.dart';
part 'sales_line_request.g.dart';

@freezed
class SalesLineRequest with _$SalesLineRequest {
  factory SalesLineRequest({
    int? id,
    required String salesId,
    required int lineId,
    required String itemId,
    required String productId,
    required String productName,
    required String productDescription,
    required String packSize,
    required double quantity,
    required String salesUnit,
    required double salesPrice,
    required double taxAmount,
    required double lineAmount,
    required String inventDimId,
    required String transactionDate,
    required String deviceId,
    required int syncStatus,
    required int companyId,
  }) = _SalesLineRequest;

  factory SalesLineRequest.fromJson(Map<String, dynamic> json) =>
      _$SalesLineRequestFromJson(json);
}
