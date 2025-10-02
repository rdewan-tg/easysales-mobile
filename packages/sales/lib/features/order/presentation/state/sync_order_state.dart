import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_order_state.freezed.dart';

@freezed
abstract class SyncOrderState with _$SyncOrderState {
  factory SyncOrderState({
    @Default(false) bool isLoading,
    @Default(false) bool isOrderSynced,
    String? errorMsg,
  }) = _SyncOrderState;
}
