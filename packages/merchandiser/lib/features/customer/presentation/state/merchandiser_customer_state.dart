import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:merchandiser/features/customer/domain/model/merchandiser_customer_address.dart';

part 'merchandiser_customer_state.freezed.dart';

@freezed
class MerchandiserCustomerState with _$MerchandiserCustomerState {
  factory MerchandiserCustomerState({
    @Default(false) bool isLoading,
    @Default([]) List<MerchandiserCustomerEntityData> customers,
    @Default([]) List<MerchandiserCustomerAddress> addresses,
    String? errorMsg,
  }) = _MerchandiserCustomerState;
}
