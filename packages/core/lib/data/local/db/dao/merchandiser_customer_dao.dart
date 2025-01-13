import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/merchandiser_customer_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'merchandiser_customer_dao.g.dart';

final merchandiserCustomerDaoProvider =
    Provider<MerchandiserCustomerDao>((ref) {
  return MerchandiserCustomerDao(ref.watch(appDatabaseProvider));
});

@DriftAccessor(tables: [MerchandiserCustomerEntity])
class MerchandiserCustomerDao extends DatabaseAccessor<AppDatabase>
    with _$MerchandiserCustomerDaoMixin {
  MerchandiserCustomerDao(super.db);

  Future<void> insertOrUpdateList(
    List<MerchandiserCustomerEntityData> dataList,
  ) async {
    try {
      await batch((batch) {
        batch.insertAllOnConflictUpdate(
          merchandiserCustomerEntity,
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

  Stream<List<MerchandiserCustomerEntityData>> watchAll() {
    return (select(merchandiserCustomerEntity)).watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }
}
