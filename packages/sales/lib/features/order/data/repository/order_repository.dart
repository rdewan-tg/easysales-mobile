import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/dao/sales_header_dao.dart';
import 'package:core/data/local/db/dao/sales_line_dao.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:core/data/local/secure_storage/isecure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage_const.dart';
import 'package:sales/features/order/data/repository/iorder_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final orderRepositoryProvider = Provider<IOrderRepository>((ref) {
  return OrderRepository(
    ref.watch(salesHeaderDaoProvider),
    ref.watch(salesLineDaoProvider),
    ref.watch(secureStorageProvider),
    ref.watch(settingDaoProvider),
  );
});

final class OrderRepository
    with DioExceptionMapper
    implements IOrderRepository {
  final SalesHeaderDao _salesHeaderDao;
  final SalesLineDao _salesLineDao;
  final ISecureStorage _secureStorage;
  final SettingDao _settingDao;

  OrderRepository(
    this._salesHeaderDao,
    this._salesLineDao,
    this._secureStorage,
    this._settingDao,
  );

  @override
  Future<SalesHeaderEntityData> createSalesHeader(
    SalesHeaderEntityCompanion data,
  ) async {
    try {
      return await _salesHeaderDao.addSalesHeader(data);
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<int> createSalesLine(SalesLineEntityCompanion data) async {
    try {
      return await _salesLineDao.addSalesLine(data);
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<SalesHeaderEntityData> getSalesHeaderBySalesId(String salesId) async {
    try {
      return await _salesHeaderDao.getSalesHeaderBySalesId(salesId);
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<SalesHeaderEntityData> updateSalesHeader(
    SalesHeaderEntityCompanion data,
  ) async {
    try {
      return await _salesHeaderDao.updateSalesHeader(data);
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<int> updateSalesLine(SalesLineEntityCompanion data) async {
    try {
      return await _salesLineDao.updateSalesLine(data);
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Stream<List<SalesHeaderEntityData>> watchAllSalesHeader() {
    try {
      return _salesHeaderDao.watchAllSalesHeader();
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Stream<List<SalesLineEntityData>> watchAllSalesLineBySalesId(String salesId) {
    try {
      return _salesLineDao.watchSalesLineBySalesId(salesId);
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<int> getOrderRunningNumber() async {
    try {
      final value = await _secureStorage.read(salesOrderRunningNumberKey);
      return int.parse(value ?? '0');
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<void> setOrderRunningNumber(String value) async {
    try {
      await _secureStorage.write(salesOrderRunningNumberKey, value);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<Map<String, String>> getAllSettings() {
    try {
      return _settingDao.getAllSettings();
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<int> getMaxLineNumberBySalesId(String salesId) {
    try {
      return _salesLineDao.getMaxLineNumberBySalesId(salesId);
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }

  @override
  Future<int> deleteLine(String salesId, int lineId) async {
    try {
      return await _salesLineDao.deleteLine(salesId, lineId);
    } on Failure catch (_) {
      rethrow;
    } catch (e, stackTrace) {
      throw Failure(message: e.toString(), stackTrace: stackTrace);
    }
  }
}
