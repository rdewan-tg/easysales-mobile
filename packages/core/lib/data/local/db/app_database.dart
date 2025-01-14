import 'package:core/data/local/db/dao/merchandiser_customer_dao.dart';
import 'package:core/data/local/db/dao/sales_customer_dao.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:core/data/local/db/entity/merchandiser_customer_entity.dart';
import 'package:core/data/local/db/entity/sales_customer_entity.dart';
import 'package:core/data/local/db/entity/setting_entity.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_database.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) => AppDatabase();

@DriftDatabase(
  tables: [SettingEntity, MerchandiserCustomerEntity, SalesCustomerEntity],
  daos: [SettingDao, MerchandiserCustomerDao, SalesCustomerDao],
)
class AppDatabase extends _$AppDatabase {
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/setup/
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    // `getApplicationDocumentsDirectory()`.
    return driftDatabase(name: 'easy_sales');
  }
}
