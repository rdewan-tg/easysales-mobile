import 'package:core/data/local/db/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_header_state.freezed.dart';

@freezed
class SalesHeaderState with _$SalesHeaderState {
  factory SalesHeaderState({
    @Default(false) bool isLoading,
    @Default(false) bool isFetchingCurrentOrderNumber,
    @Default(false) bool isOrderSynced,
    @Default(0) int currentOrderNumber,
    @Default([]) List<SalesHeaderEntityData> salesHeaders,
    CustomerAddressEntityData? customerAddressData,
    SalesCustomerEntityData? customerData,
    SalesHeaderEntityData? salesHeaderData,
    Map<String, String>? settings,
    String? errorMsg,
  }) = _SalesHeaderState;
}
