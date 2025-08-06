import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_response.freezed.dart';
part 'customer_response.g.dart';

CustomerResponse deserializeCustomerResponse(Map<String, dynamic> json) =>
    CustomerResponse.fromJson(json);

@freezed
class CustomerResponse with _$CustomerResponse {
  const factory CustomerResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "data") required List<CustomerData> data,
  }) = _CustomerResponse;

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);
}

@freezed
class CustomerData with _$CustomerData {
  const factory CustomerData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "customerId") required String customerId,
    @JsonKey(name: "customerName") required String customerName,
    @JsonKey(name: "address") required String address,
    @JsonKey(name: "salesPersonId") required String salesPersonId,
    @JsonKey(name: "salesPerson") String? salesPerson,
    @JsonKey(name: "merchandiser") String? merchandiser,
    @JsonKey(name: "countryId") required String countryId,
    @JsonKey(name: "phoneNumber") String? phoneNumber,
    @JsonKey(name: "latitude") required String latitude,
    @JsonKey(name: "longitude") required String longitude,
    @JsonKey(name: "creditLimit")
    @StringToDoubleConverter()
    double? creditLimit,
    @JsonKey(name: "currencyCode") String? currencyCode,
    @JsonKey(name: "paymentTerm") String? paymentTerm,
    @JsonKey(name: "priceGroup") String? priceGroup,
    @JsonKey(name: "customreDimension") String? customreDimension,
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "companyId") required int companyId,
    @JsonKey(name: "companyCode") required String companyCode,
    @JsonKey(name: "createAt") required DateTime createAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
  }) = _CustomerData;

  factory CustomerData.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataFromJson(json);
}

class StringToDoubleConverter implements JsonConverter<double?, dynamic> {
  const StringToDoubleConverter();

  @override
  double? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is num) return json.toDouble(); // Handles int/double
    if (json is String) {
      return double.tryParse(json); // Handles String values
    }
    return null; // Prevents crashes if unexpected type
  }

  @override
  dynamic toJson(double? object) => object;
}
