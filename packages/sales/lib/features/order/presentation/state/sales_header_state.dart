import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_header_state.freezed.dart';

@freezed
class SalesHeaderState with _$SalesHeaderState {
  factory SalesHeaderState({
    @Default('') String salesId,
    @Default('') String customerId,
    @Default('') String customerName,
    @Default('') String customerAddress,
    @Default('') String salesPersonId,
    @Default('') String deviceId,
    @Default('') String customerRequisition,
    @Default('') String customerPriceGroup,
    @Default('') String note,
    @Default('') String deliveryDate,
    @Default('') String transactionDate,
  }) = _SalesHeaderState;
}
