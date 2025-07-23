import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_address_response.freezed.dart';
part 'customer_address_response.g.dart';

CustomerAddressResponse deserializeCustomerAddressResponse(
  Map<String, dynamic> json,
) => CustomerAddressResponse.fromJson(json);

@freezed
class CustomerAddressResponse with _$CustomerAddressResponse {
  const factory CustomerAddressResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "data")
    @Default(<CustomerAddressData>[])
    List<CustomerAddressData> data,
  }) = _CustomerAddressResponse;

  factory CustomerAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerAddressResponseFromJson(json);
}

@freezed
class CustomerAddressData with _$CustomerAddressData {
  const factory CustomerAddressData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "customerId") required String customerId,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "salesPersonId") String? salesPersonId,
    @JsonKey(name: "latitude") required String latitude,
    @JsonKey(name: "longitude") required String longitude,
    @JsonKey(name: "deliveryName") String? deliveryName,
    @JsonKey(name: "postalAddress") required String postalAddress,
    @JsonKey(name: "location") required String location,
    @JsonKey(name: "isPrimary") required bool isPrimary,
    @JsonKey(name: "companyId") required int companyId,
    @JsonKey(name: "companyCode") required String companyCode,
    @JsonKey(name: "createAt") required DateTime createAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
  }) = _CustomerAddressData;

  factory CustomerAddressData.fromJson(Map<String, dynamic> json) =>
      _$CustomerAddressDataFromJson(json);
}
