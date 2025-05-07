import 'package:core/data/local/db/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_state.freezed.dart';

@freezed
class OrderHistoryState with _$OrderHistoryState {
  factory OrderHistoryState({
    @Default(false) bool isLoading,
    @Default(false) bool isOrderSynced,
    @Default(false) bool isOrderCancelled,
    @Default(false) bool isItemEdited,
    @Default(false) bool isDeleteOrder,
    @Default([]) List<SalesHeaderEntityData> salesHeaders,
    @Default([]) List<SalesLineEntityData> salesLines,
    @Default(0.0) double totalAmount,
    String? salesId,
    String? errorMsg,
  }) = _OrderHistoryState;
}
