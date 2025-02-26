import 'package:core/data/local/db/app_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/address/application/customer_address_service.dart';
import 'package:sales/features/customer/application/sales_customer_service.dart';
import 'package:sales/features/order/application/order_service.dart';
import 'package:sales/features/order/presentation/state/sales_header_state.dart';
import 'package:common/exception/failure.dart';
import 'package:drift/drift.dart';

final salesHeaderControlelrProvider =
    NotifierProvider<SalesHeaderController, SalesHeaderState>(
  SalesHeaderController.new,
);

class SalesHeaderController extends Notifier<SalesHeaderState> {
  @override
  SalesHeaderState build() {
    return SalesHeaderState();
  }

  Future<void> getSettings() async {
    // get the setting from the database
    final settings = await ref.read(orderServiceProvider).getAllSetting();
    // update state
    state = state.copyWith(settings: settings);
  }

  Future<void> createSalesHeader(
    Map<String, dynamic> data,
    String transactionDate,
  ) async {
    try {
      // get current order number
      final currentOrderNumber =
          await ref.read(orderServiceProvider).getOrderRunningNumber();
      // increment the order number
      final orderRunningNumber = currentOrderNumber + 1;
      // get the setting from the database
      final settings = state.settings;
      // get the orderNumberFormat from map
      final orderNumberFormat = settings?['orderNumberFormat'] ?? '-';
      // get the company id from map
      final comapnyId = int.tryParse(settings?['companyId'] ?? '1');
      // get the device id
      final deviceId = settings?['deviceId'] ?? '';
      // generate the sales id
      final salesId = '$orderNumberFormat$orderRunningNumber';

      // customer
      final customer = await ref
          .read(salesCustomerServiceProvider)
          .getCustomerByCustomerId(data['customerId']);
      // update the state
      state = state.copyWith(customerData: customer);

      // address
      final address = await ref
          .read(customerAddressServiceProvider)
          .getCustomerAddressByPostalAddress(data['postalAddress']);
      // update the state
      state = state.copyWith(customerAddressData: address);
      // sales head data
      final salesHeaderData = SalesHeaderEntityCompanion(
        salesId: Value(salesId),
        customerId: Value(customer?.customerId ?? ''),
        customerAddress: Value(address.address),
        customerName: Value(customer?.customerName ?? ''),
        salesPersonId: Value(customer?.salesPersonId ?? ''),
        customerRequisition: const Value(''),
        customerPriceGroup: Value(customer?.priceGroup ?? ''),
        note: const Value(''),
        deliveryAddressLocation: Value(address.location),
        deliveryDate: const Value(''),
        transactionDate: Value(transactionDate),
        deviceId: Value(deviceId),
        syncStatus: const Value(0),
        companyId: Value(comapnyId ?? 1),
      );
      final result = await ref
          .read(orderServiceProvider)
          .createSalesHeader(salesHeaderData);
      result.when(
        (success) {
          state = state.copyWith(salesHeaderData: success);
          // update the order running number
          ref
              .read(orderServiceProvider)
              .setOrderRunningNumber(orderRunningNumber.toString());
        },
        (error) {
          state = state.copyWith(errorMsg: error.message);
        },
      );
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString());
    }
  }

  Future<void> updateDeliveryDate(deliveryDate) async {
    try {
      state = state.copyWith(errorMsg: null, isLoading: true);
      final salesId = state.salesHeaderData?.salesId ?? '';
      // sales head data
      final salesHeaderData = SalesHeaderEntityCompanion(
        salesId: Value(salesId),
        deliveryDate: Value(deliveryDate),
      );
      // update the sales header
      final result = await ref
          .read(orderServiceProvider)
          .updateSalesHeader(salesHeaderData);
      // update the state
      result.when((success) {
        state = state.copyWith(salesHeaderData: success, isLoading: false);
      }, (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      });
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    }
  }

  Future<void> updateCustomerRequisition(String value) async {
    try {
      state = state.copyWith(errorMsg: null, isLoading: true);
      final salesId = state.salesHeaderData?.salesId ?? '';
      // sales head data
      final salesHeaderData = SalesHeaderEntityCompanion(
        salesId: Value(salesId),
        customerRequisition: Value(value),
      );
      // update the sales header
      final result = await ref
          .read(orderServiceProvider)
          .updateSalesHeader(salesHeaderData);
      // update the state
      result.when((success) {
        state = state.copyWith(salesHeaderData: success, isLoading: false);
      }, (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      });
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    }
  }

  Future<void> updateNote(String value) async {
    try {
      state = state.copyWith(errorMsg: null, isLoading: true);
      final salesId = state.salesHeaderData?.salesId ?? '';
      // sales head data
      final salesHeaderData = SalesHeaderEntityCompanion(
        salesId: Value(salesId),
        note: Value(value),
      );
      // update the sales header
      final result = await ref
          .read(orderServiceProvider)
          .updateSalesHeader(salesHeaderData);
      // update the state
      result.when((success) {
        state = state.copyWith(salesHeaderData: success, isLoading: false);
      }, (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      });
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    }
  }

  String? getTimeZone() => state.settings?['timeZone'];

  String getPriceGroup() => state.customerData?.priceGroup ?? '';

  String getSalesId() => state.salesHeaderData?.salesId ?? '';

  bool isDeliveryDateSet() =>
      state.salesHeaderData?.deliveryDate.isNotEmpty ?? false;

  Future<void> getCustomerAddressByPostalAddress(String postalAddress) async {
    try {
      final result = await ref
          .read(customerAddressServiceProvider)
          .getCustomerAddressByPostalAddress(postalAddress);

      state = state.copyWith(customerAddressData: result);
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    }
  }

  Future<void> getCustomerByCustomerId(String customerId) async {
    try {
      final result = await ref
          .read(salesCustomerServiceProvider)
          .getCustomerByCustomerId(customerId);

      state = state.copyWith(customerData: result);
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    }
  }
}
