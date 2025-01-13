import 'package:freezed_annotation/freezed_annotation.dart';


part 'merchandiser_customer.freezed.dart';

@freezed
class MerchandiserCustomer with _$MerchandiserCustomer{
    const factory MerchandiserCustomer({
        required int id,
        required String customerId,
        required String customerName,
        required String address,
        required String salesPersonId,
        String? salesPerson,
        String? merchandiser,
        required String countryId,
        String? phoneNumber,
        required double latitude,
        required double longitude,
        double? creditLimit,
        String? currencyCode,
        String? paymentTerm,
        String? priceGroup,
        required String customreDimension,
        required int status,
        required int companyId,
        required String companyCode,    
    }) = _MerchandiserCustomer;
}
