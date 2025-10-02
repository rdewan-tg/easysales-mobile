import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_header_response.freezed.dart';
part 'sales_header_response.g.dart';

@freezed
abstract class SalesHeaderResponse with _$SalesHeaderResponse {
  const factory SalesHeaderResponse({
    required String status,
    required SalesHeaderData data,
  }) = _SalesHeaderResponse;

  factory SalesHeaderResponse.fromJson(Map<String, dynamic> json) =>
      _$SalesHeaderResponseFromJson(json);
}

@freezed
abstract class SalesHeaderData with _$SalesHeaderData {
  const factory SalesHeaderData({
    required int id,
    required String salesId,
    required String customerId,
    required String customerName,
    required String customerAddress,
    required String salesPersonId,
    required String customerPriceGroup,
    required String deliveryAddressLocation,
    required String deliveryDate,
    required String transactionDate,
    required String deviceId,
    required int syncStatus,
    required int companyId,
    // Add other fields as necessary
  }) = _SalesHeaderData;

  factory SalesHeaderData.fromJson(Map<String, dynamic> json) =>
      _$SalesHeaderDataFromJson(json);
}
