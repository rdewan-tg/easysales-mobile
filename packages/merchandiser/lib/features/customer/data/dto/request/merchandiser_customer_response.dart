import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchandiser_customer_response.freezed.dart';
part 'merchandiser_customer_response.g.dart';

MerchandiserCustomerResponse deserializeMerchandiserCustomerResponse(
  Map<String, dynamic> json,
) =>
    MerchandiserCustomerResponse.fromJson(json);

@freezed
class MerchandiserCustomerResponse with _$MerchandiserCustomerResponse {
  const factory MerchandiserCustomerResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "data") required List<MerchandiserCustomerDto> data,
  }) = _MerchandiserCustomerResponse;

  factory MerchandiserCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$MerchandiserCustomerResponseFromJson(json);
}

@freezed
class MerchandiserCustomerDto with _$MerchandiserCustomerDto {
  const factory MerchandiserCustomerDto({
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
  }) = _MerchandiserCustomerDto;

  factory MerchandiserCustomerDto.fromJson(Map<String, dynamic> json) =>
      _$MerchandiserCustomerDtoFromJson(json);
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
