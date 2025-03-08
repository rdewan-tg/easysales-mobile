import 'package:core/data/local/db/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_state.freezed.dart';

@freezed
class AddressState with _$AddressState {
  factory AddressState({
    @Default(false) bool isLoading,
    @Default([]) List<CustomerAddressEntityData> addresses,
    String? errorMsg,
  }) = _AddressState;
}
