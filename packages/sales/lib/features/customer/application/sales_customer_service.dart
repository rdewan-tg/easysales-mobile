import 'dart:isolate';

import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sales/features/customer/application/isales_customer_service.dart';
import 'package:sales/features/customer/data/repository/isales_customer_repository.dart';
import 'package:sales/features/customer/data/repository/sales_customer_repository.dart';
import 'package:common/dto/customer/customer_response.dart';

final salesCustomerServiceProvider =
    Provider.autoDispose<ISalesCustomerService>((ref) {
  final merchandiserCustomerRepository =
      ref.watch(salesCustomerRepositoryProvider);

  return SalesCustomerService(merchandiserCustomerRepository);
});

final class SalesCustomerService implements ISalesCustomerService {
  final ISalesCustomerRepository _salesCustomerRepository;

  SalesCustomerService(this._salesCustomerRepository);

  @override
  Future<Result<bool, Failure>> getSalesCustomers(
    String dataAreaId,
  ) async {
    try {
      final response =
          await _salesCustomerRepository.getSalesCustomers(dataAreaId);

      final salesCustomerData = await Isolate.run(
        () => _mapToSalesCustomerEntityData(response),
      );

      await _salesCustomerRepository.insertOrUpdate(salesCustomerData);

      return const Result.success(true);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(
        Failure(
          message: e.toString(),
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Result<bool, Failure>> filterSalesCustomers(
    String companyCode,
    String salesPersonId,
  ) async {
    try {
      final response = await _salesCustomerRepository.filterSalesCustomers(
        companyCode,
        salesPersonId,
      );

      final salesCustomerData = await Isolate.run(
        () => _mapToSalesCustomerEntityData(response),
      );

      await _salesCustomerRepository.insertOrUpdate(salesCustomerData);

      return const Result.success(true);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(
        Failure(
          message: e.toString(),
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Stream<List<SalesCustomerEntityData>> watchAll(String? searchQuery) {
    return _salesCustomerRepository.watchAll(searchQuery);
  }

  @override
  Future<Map<String, String>> getAllSetting() async {
    try {
      return await _salesCustomerRepository.getAllSettings();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Result<int, Failure>> deleteAllSearchCustomerHistory() async {
    try {
      final result =
          await _salesCustomerRepository.deleteAllSearchCustomerHistory();

      return Result.success(result);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(
        Failure(
          message: e.toString(),
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<void> insertOrUpdateSearchSalesCustomerHistory(String key) async {
    try {
      await _salesCustomerRepository
          .insertOrUpdateSearchSalesCustomerHistory(key);
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Stream<List<SearchSalesCustomerHistoryEntityData>>
      watchSearchCustomerHistory() {
    return _salesCustomerRepository.watchSearchCustomerHistory();
  }

  @override
  Stream<int> watchTotalCustomerCount() {
    return _salesCustomerRepository.watchTotalCustomerCount();
  }

  @override
  Future<SalesCustomerEntityData?> getCustomerByCustomerId(
    String customerId,
  ) async {
    try {
      return await _salesCustomerRepository.getCustomerByCustomerId(customerId);
    } on Failure catch (_) {
      rethrow;
    }
  }
}

// top level function for isolate
List<SalesCustomerEntityData> _mapToSalesCustomerEntityData(
  CustomerResponse response,
) {
  return response.data
      .map(
        (e) => SalesCustomerEntityData(
          customerId: e.customerId,
          customerName: e.customerName,
          address: e.address,
          salesPersonId: e.salesPersonId,
          salesPerson: e.salesPerson,
          merchandiser: e.merchandiser,
          countryId: e.countryId,
          phoneNumber: e.phoneNumber,
          latitude: double.parse(e.latitude),
          longitude: double.parse(e.longitude),
          creditLimit: e.creditLimit,
          currencyCode: e.currencyCode,
          paymentTerm: e.paymentTerm,
          priceGroup: e.priceGroup,
          customreDimension: e.customreDimension,
          status: e.status,
          companyId: e.companyId,
          companyCode: e.companyCode,
        ),
      )
      .toList();
}
