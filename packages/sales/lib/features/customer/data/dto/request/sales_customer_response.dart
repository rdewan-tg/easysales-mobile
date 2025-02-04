import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_customer_response.freezed.dart';
part 'sales_customer_response.g.dart';

SalesCustomerResponse deserializeSalesCustomerResponse(
  Map<String, dynamic> json,
) =>
    SalesCustomerResponse.fromJson(json);

@freezed
class SalesCustomerResponse with _$SalesCustomerResponse {
  const factory SalesCustomerResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "data") required List<SalesCustomerDto> data,
  }) = _SalesCustomerResponse;

  factory SalesCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$SalesCustomerResponseFromJson(json);
}

@freezed
class SalesCustomerDto with _$SalesCustomerDto {
  const factory SalesCustomerDto({
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
  }) = _SalesCustomerDto;

  factory SalesCustomerDto.fromJson(Map<String, dynamic> json) =>
      _$SalesCustomerDtoFromJson(json);
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
