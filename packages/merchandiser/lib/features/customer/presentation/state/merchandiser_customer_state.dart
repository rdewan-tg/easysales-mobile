import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:merchandiser/features/customer/domain/model/merchandiser_customer_address.dart';

part 'merchandiser_customer_state.freezed.dart';

@freezed
class MerchandiserCustomerState with _$MerchandiserCustomerState {
  factory MerchandiserCustomerState({
    @Default(false) bool isLoading,
    @Default(false) bool isSearchHistoryCleared,
    int? totalSearchHistoryCleared,
    @Default([]) List<SalesCustomerEntityData> customers,
    @Default([]) List<MerchandiserCustomerAddress> addresses,
    String? errorMsg,
    @Default([]) List<String> searchHistory,
    @Default('') String searchQuery,
    @Default('') String lastSearchQuery,
  }) = _MerchandiserCustomerState;
}
