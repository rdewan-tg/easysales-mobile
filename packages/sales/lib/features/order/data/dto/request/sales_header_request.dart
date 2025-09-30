import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_header_request.freezed.dart';
part 'sales_header_request.g.dart';

@freezed
abstract class SalesHeaderRequest with _$SalesHeaderRequest {
  factory SalesHeaderRequest({
    int? id,
    required String salesId,
    required String customerId,
    required String customerName,
    required String customerAddress,
    required String salesPersonId,
    required String customerRequisition,
    required String customerPriceGroup,
    required String note,
    required String deliveryAddressLocation,
    required String deliveryDate,
    required String transactionDate,
    required String deviceId,
    required int syncStatus,
    required int companyId,
  }) = _SalesHeaderRequest;

  factory SalesHeaderRequest.fromJson(Map<String, dynamic> json) =>
      _$SalesHeaderRequestFromJson(json);
}
