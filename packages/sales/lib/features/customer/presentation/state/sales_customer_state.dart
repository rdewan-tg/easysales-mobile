import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/data/local/db/app_database.dart';


part 'sales_customer_state.freezed.dart';

@freezed
class SalesCustomerState with _$SalesCustomerState {

  factory SalesCustomerState({
    @Default(false) bool isLoading,
    @Default([]) List<SalesCustomerEntityData> customers,
    String? errorMsg,
  }) = _SalesCustomerState;
}