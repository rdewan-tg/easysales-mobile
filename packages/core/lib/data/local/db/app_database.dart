import 'package:core/data/local/db/app_database.steps.dart';
import 'package:core/data/local/db/dao/customer_address_dao.dart';
import 'package:core/data/local/db/dao/merchandiser_customer_dao.dart';
import 'package:core/data/local/db/dao/product_dao.dart';
import 'package:core/data/local/db/dao/product_price_dao.dart';
import 'package:core/data/local/db/dao/sales_customer_dao.dart';
import 'package:core/data/local/db/dao/sales_header_dao.dart';
import 'package:core/data/local/db/dao/sales_line_dao.dart';
import 'package:core/data/local/db/dao/search_product_history_dao.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:core/data/local/db/entity/customer_address_entity.dart';
import 'package:core/data/local/db/entity/merchandiser_customer_entity.dart';
import 'package:core/data/local/db/entity/product_entity.dart';
import 'package:core/data/local/db/entity/product_price_entity.dart';
import 'package:core/data/local/db/entity/sales_customer_entity.dart';
import 'package:core/data/local/db/entity/sales_header_entity.dart';
import 'package:core/data/local/db/entity/sales_line_entity.dart';
import 'package:core/data/local/db/entity/search_merchandiser_customer_history_entity.dart';
import 'package:core/data/local/db/entity/search_product_history_entity.dart';
import 'package:core/data/local/db/entity/search_sales_customer_history_entity.dart';
import 'package:core/data/local/db/entity/setting_entity.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_database.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) => AppDatabase();

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
    SalesHeaderEntity,
    SalesLineEntity,
  ],
  daos: [
    SettingDao,
    MerchandiserCustomerDao,
    SalesCustomerDao,
    CustomerAddressDao,
    ProductDao,
    ProductPriceDao,
    SearchProductHistoryDao,
    SalesHeaderDao,
    SalesLineDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/setup/
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 2;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    return driftDatabase(name: 'easy_sales');
  }

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onUpgrade: stepByStep(
        from1To2: (m, schema) async {
          debugPrint('Upgrading database from version 1 to 2');
          // add a flavor column to product_price_entity
          await m.addColumn(
            schema.productPriceEntity,
            schema.productPriceEntity.flavor,
          );
        },
      ),
      beforeOpen: (details) async {
        if (details.wasCreated) {
          // This database is being created for the first time.
        }
        if (details.hadUpgrade) {
          // This database was upgraded from a previous version.
          debugPrint(
            'Upgrading database from version ${details.wasCreated ? 1 : details.versionBefore} to ${details.versionNow}',
          );
        }
        //  sqlite3, foreign key references aren't enabled by default.
        // To enable them, run:
        await customStatement('PRAGMA foreign_keys = ON');
      },
    );
    //onCreate: (migrator) {},
  }
}
