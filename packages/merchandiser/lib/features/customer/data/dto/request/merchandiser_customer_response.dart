import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'merchandiser_customer_response.freezed.dart';
part 'merchandiser_customer_response.g.dart';

MerchandiserCustomerResponse merchandiserCustomerResponseFromJson(String str) =>
    MerchandiserCustomerResponse.fromJson(json.decode(str));

String merchandiserCustomerResponseToJson(MerchandiserCustomerResponse data) =>
    json.encode(data);

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
    @JsonKey(name: "salesPerson") required String salesPerson,
    @JsonKey(name: "merchandiser") String? merchandiser,
    @JsonKey(name: "countryId") required String countryId,
    @JsonKey(name: "phoneNumber") String? phoneNumber,
    @JsonKey(name: "latitude") required String latitude,
    @JsonKey(name: "longitude") required String longitude,
    @JsonKey(name: "creditLimit") double? creditLimit,
    @JsonKey(name: "currencyCode") String? currencyCode,
    @JsonKey(name: "paymentTerm") String? paymentTerm,
    @JsonKey(name: "priceGroup") String? priceGroup,
    @JsonKey(name: "customreDimension") required String customreDimension,
    @JsonKey(name: "status") required int status,
    @JsonKey(name: "companyId") required int companyId,
    @JsonKey(name: "companyCode") required String companyCode,
    @JsonKey(name: "createAt") required DateTime createAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
  }) = _MerchandiserCustomerDto;

  factory MerchandiserCustomerDto.fromJson(Map<String, dynamic> json) =>
      _$MerchandiserCustomerDtoFromJson(json);
}
