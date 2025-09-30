import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_address.freezed.dart';

@freezed
abstract class CustomerAddress with _$CustomerAddress {
  factory CustomerAddress({
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
  }) = _CustomerAddress;
}
