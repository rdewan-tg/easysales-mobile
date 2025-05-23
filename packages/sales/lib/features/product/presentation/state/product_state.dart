import 'package:core/data/local/db/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState({
    @Default(false) bool isLoading,
    @Default(false) bool isProductImported,
    @Default(false) bool isPriceImported,
    @Default({}) Map<String, String> settings,
    @Default([]) List<ProductEntityData> products,
    @Default([]) List<ProductPriceEntityData> prices,
    ProductPriceEntityData? price,
    @Default([]) List<String> uom,
    @Default([]) List<String> packSize,
    @Default(0) int quantity,
    @Default(0) int totalProductImported,
    @Default(0) int totalPriceImported,
    @Default([]) List<String> searchHistory,
    @Default('') String searchQuery,
    @Default('') String lastSearchQuery,
    @Default(false) bool isSearchProductHistoryCleared,
    int? totalSearchProductHistoryCleared,
    String? errorMsg,
  }) = _ProductState;
}
