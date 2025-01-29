import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/customer_address_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'customer_address_dao.g.dart';

final customerAddressDaoProvider = Provider<CustomerAddressDao>((ref) {
  return CustomerAddressDao(ref.watch(appDatabaseProvider));
});

@DriftAccessor(tables: [CustomerAddressEntity])
class CustomerAddressDao extends DatabaseAccessor<AppDatabase>
    with _$CustomerAddressDaoMixin {
  CustomerAddressDao(super.db);

  // Check if data exists in the table
  Future<bool> hasData() async {
    final result = await (select(customerAddressEntity).get());
    return result.isNotEmpty;
  }

  // Clear the table
  Future<void> clearTable() async {
    await delete(customerAddressEntity).go();
  }

  Future<void> insertOrUpdateList(
    List<CustomerAddressEntityData> dataList,
  ) async {
    try {
      await batch((batch) {
        batch.insertAllOnConflictUpdate(
          customerAddressEntity,
          dataList,
        );
      });
    } catch (e, stackTrace) {
      throw Failure(
        message: 'Failed to insert or update list: $e',
        stackTrace: stackTrace,
      );
    }
  }

  Stream<List<CustomerAddressEntityData>> watchAll({
    String? searchQuery,
  }) {
    final query = select(customerAddressEntity);

    if (searchQuery != null && searchQuery.isNotEmpty) {
      query.where(
        (tbl) => tbl.customerId.contains(searchQuery), // Filter by customerId
      );
    }

    return query.watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }
}
