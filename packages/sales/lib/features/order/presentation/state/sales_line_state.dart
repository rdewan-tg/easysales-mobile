import 'package:core/data/local/db/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_line_state.freezed.dart';

@freezed
abstract class SalesLineState with _$SalesLineState {
  factory SalesLineState({
    @Default(false) bool isLoading,
    @Default(false) bool isItemAdded,
    @Default(false) bool isItemEdited,
    @Default(false) bool isItemRemoved,
    @Default(false) bool isOrderSynced,
    @Default([]) List<SalesLineEntityData> salesLines,
    Map<String, String>? settings,
    String? salesId,
    String? errorMsg,
  }) = _SalesLineState;
}
