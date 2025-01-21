import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchandiser_customer_address.freezed.dart';

@freezed
class MerchandiserCustomerAddress with _$MerchandiserCustomerAddress {
  factory MerchandiserCustomerAddress({
    required int id,
    required String customerId,
    String? deliveryName,
    String? address,
    String? salesPersonId,
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    BigInt? postalAddress,
    BigInt? location,
    @Default(false) bool isPrimary,
    required int companyId,
    required String companyCode,
  }) = _MerchandiserCustomerAddress;
}
