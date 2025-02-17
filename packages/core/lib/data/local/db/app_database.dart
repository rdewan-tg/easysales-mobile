import 'dart:io';

import 'package:core/data/local/db/dao/customer_address_dao.dart';
import 'package:core/data/local/db/dao/merchandiser_customer_dao.dart';
import 'package:core/data/local/db/dao/product_dao.dart';
import 'package:core/data/local/db/dao/product_price_dao.dart';
import 'package:core/data/local/db/dao/sales_customer_dao.dart';
import 'package:core/data/local/db/dao/search_product_history_dao.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:core/data/local/db/entity/customer_address_entity.dart';
import 'package:core/data/local/db/entity/merchandiser_customer_entity.dart';
import 'package:core/data/local/db/entity/product_entity.dart';
import 'package:core/data/local/db/entity/product_price_entity.dart';
import 'package:core/data/local/db/entity/sales_customer_entity.dart';
import 'package:core/data/local/db/entity/search_merchnadiser_customer_history_entity.dart';
import 'package:core/data/local/db/entity/search_product_history_entity.dart';
import 'package:core/data/local/db/entity/search_sales_customer_history_entity.dart';
import 'package:core/data/local/db/entity/setting_entity.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/isolate.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;

part 'app_database.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) => AppDatabase();

Future<DriftIsolate> createIsolateWithSpawn() async {
  final token = RootIsolateToken.instance!;
  return await DriftIsolate.spawn(() {
    // This function runs in a new isolate, so we must first initialize the
    // messenger to use platform channels.
    BackgroundIsolateBinaryMessenger.ensureInitialized(token);

    // The callback to DriftIsolate.spawn() must return the database connection
    // to use.
    return LazyDatabase(() async {
      // Note that this runs on a background isolate, which only started to
      // support platform channels in Flutter 3.7. For earlier Flutter versions,
      // a workaround is described later in this article.
      final dbFolder = await getApplicationDocumentsDirectory();
      final dbPath = path.join(dbFolder.path, 'easy_sales');

      return NativeDatabase(File(dbPath));
    });
  });
}

@DriftDatabase(
  tables: [
    SettingEntity,
    MerchandiserCustomerEntity,
    SalesCustomerEntity,
    SearchMerchandiserCustomerHistoryEntity,
    SearchSalesCustomerHistoryEntity,
    SearchProductHistoryEntity,
    CustomerAddressEntity,
    ProductEntity,
    ProductPriceEntity,
  ],
  daos: [
    SettingDao,
    MerchandiserCustomerDao,
    SalesCustomerDao,
    CustomerAddressDao,
    ProductDao,
    ProductPriceDao,
    SearchProductHistoryDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/setup/
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    return driftDatabase(name: 'easy_sales');
  }

  @override
  MigrationStrategy get migration => MigrationStrategy(
      //onCreate: (migrator) {},
      // onUpgrade: stepByStep(
      //   from1To2: (m, schema) async {

      //   },
      // ),
      );
}
