import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/data/local/db/app_database.dart';

part 'sales_customer_state.freezed.dart';

@freezed
abstract class SalesCustomerState with _$SalesCustomerState {
  factory SalesCustomerState({
    @Default(false) bool isLoading,
    @Default(false) bool isCustomerImported,
    @Default(false) bool isSearchHistoryCleared,
    int? totalSearchHistoryCleared,
    @Default(0) int totalCustomerCount,
    @Default([]) List<SalesCustomerEntityData> customers,
    String? errorMsg,
    @Default([]) List<String> searchHistory,
    @Default('') String searchQuery,
    @Default('') String lastSearchQuery,
  }) = _SalesCustomerState;
}
