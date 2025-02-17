import 'package:core/data/local/db/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState({
    @Default(false) isLoading,
    @Default([]) List<ProductEntityData> products,
    @Default([]) List<ProductPriceEntityData> prices,
    String? errorMsg,
    @Default([]) List<String> searchHistory,
    @Default('') String searchQuery,
    @Default('') String lastSearchQuery,
    @Default(false) bool isSearchProductHistoryCleared,
    int? totalSearchProductHistoryCleared,
  }) = _ProductState;
}
