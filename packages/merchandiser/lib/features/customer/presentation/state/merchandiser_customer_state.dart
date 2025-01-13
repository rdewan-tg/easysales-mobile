import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/data/local/db/app_database.dart';


part 'merchandiser_customer_state.freezed.dart';

@freezed
class MerchandiserCustomerState with _$MerchandiserCustomerState {

  factory MerchandiserCustomerState({
    @Default(false) bool isLoading,
    @Default([]) List<MerchandiserCustomerEntityData> customers,
    String? errorMsg,
  }) = _MerchandiserCustomerState;
}