import 'dart:isolate';

import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:merchandiser/features/customer/application/imerchandiser_customer_service.dart';
import 'package:common/dto/customer/customer_response.dart';
import 'package:merchandiser/features/customer/data/repository/imerchandiser_customer_repository.dart';
import 'package:merchandiser/features/customer/data/repository/merchandiser_customer_repository.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final merchandiserCustomerServiceProvider =
    Provider.autoDispose<IMerchandiserCustomerService>((ref) {
      final merchandiserCustomerRepository = ref.watch(
        merchandiserCustomerRepositoryProvider,
      );

      return MerchandiserCustomerService(merchandiserCustomerRepository);
    });

final class MerchandiserCustomerService
    implements IMerchandiserCustomerService {
  final IMerchandiserCustomerRepository _merchandiserCustomerRepository;

  MerchandiserCustomerService(this._merchandiserCustomerRepository);

  @override
  Future<Result<bool, Failure>> getMerchandiserCustomers(
    String dataAreaId,
  ) async {
    try {
      final response = await _merchandiserCustomerRepository
          .getMerchandiserCustomers(dataAreaId);

      final merchandiserCustomerData = await Isolate.run(
        () => _mapToMerchandiserCustomerEntityData(response),
      );

      await _merchandiserCustomerRepository.insertOrUpdate(
        merchandiserCustomerData,
      );

      return const Result.success(true);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(Failure(message: e.toString(), stackTrace: s));
    }
  }

  @override
  Future<Result<bool, Failure>> filterMerchandiserCustomers(
    String companyCode,
    String salesPersonId,
  ) async {
    try {
      final response = await _merchandiserCustomerRepository
          .filterMerchandiserCustomers(companyCode, salesPersonId);

      final merchandiserCustomerData = await Isolate.run(
        () => _mapToMerchandiserCustomerEntityData(response),
      );

      await _merchandiserCustomerRepository.insertOrUpdate(
        merchandiserCustomerData,
      );

      return const Result.success(true);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(Failure(message: e.toString(), stackTrace: s));
    }
  }

  @override
  Stream<List<MerchandiserCustomerEntityData>> watchAll(String? searchQuery) {
    return _merchandiserCustomerRepository.watchAll(searchQuery);
  }

  @override
  Stream<int> watchTotalCustomerCount() {
    return _merchandiserCustomerRepository.watchTotalCustomerCount();
  }

  @override
  Stream<List<SearchMerchandiserCustomerHistoryEntityData>>
  watchSearchCustomerHistory() {
    return _merchandiserCustomerRepository.watchSearchCustomerHistory();
  }

  @override
  Future<Map<String, String>> getAllSetting() async {
    try {
      return await _merchandiserCustomerRepository.getAllSettings();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> insertOrUpdateSearchMerchandiserCustomerHistory(
    String key,
  ) async {
    try {
      await _merchandiserCustomerRepository
          .insertOrUpdateSearchMerchandiserCustomerHistory(key);
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<Result<int, Failure>> deleteAllSearchCustomerHistory() async {
    try {
      final result = await _merchandiserCustomerRepository
          .deleteAllSearchCustomerHistory();

      return Result.success(result);
    } on Failure catch (e) {
      return Result.error(e);
    } catch (e, s) {
      return Result.error(Failure(message: e.toString(), stackTrace: s));
    }
  }
}

// top level function for isolate
List<MerchandiserCustomerEntityData> _mapToMerchandiserCustomerEntityData(
  CustomerResponse response,
) {
  return response.data
      .map(
        (e) => MerchandiserCustomerEntityData(
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
