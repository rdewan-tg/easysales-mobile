import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/data/local/db/app_database.dart';

part 'sales_customer_state.freezed.dart';

@freezed
class SalesCustomerState with _$SalesCustomerState {
  factory SalesCustomerState({
    @Default(false) bool isLoading,
    @Default(false) bool isSearchHistoryCleared,
    int? totalSearchHistoryCleared,
    @Default([]) List<SalesCustomerEntityData> customers,
    String? errorMsg,
    @Default([]) List<String> searchHistory,
    @Default('') String searchQuery,
    @Default('') String lastSearchQuery,
  }) = _SalesCustomerState;
}
