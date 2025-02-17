import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/order/presentation/state/sales_header_state.dart';

final salesHeaderControlelrProvider =
    NotifierProvider<SalesHeaderController, SalesHeaderState>(
        SalesHeaderController.new);

class SalesHeaderController extends Notifier<SalesHeaderState> {
  @override
  SalesHeaderState build() {
    return SalesHeaderState();
  }

  Future<void> createSalesHeader() async {
    state = state.copyWith(salesId: '0112');
  }
}
