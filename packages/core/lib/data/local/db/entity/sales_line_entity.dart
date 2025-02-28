import 'package:core/data/local/db/entity/sales_header_entity.dart';
import 'package:drift/drift.dart';

class SalesLineEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get salesId => text()
      .references(SalesHeaderEntity, #salesId, onDelete: KeyAction.cascade)();
  IntColumn get lineId => integer()();
  TextColumn get itemId => text()();
  TextColumn get productId => text()();
  TextColumn get productName => text()();
  TextColumn get productDescription => text()();
  TextColumn get packSize => text()();
  RealColumn get quantity => real()();
  TextColumn get salesUnit => text()();
  RealColumn get salesPrice => real()();
  RealColumn get taxAmount => real()();
  RealColumn get lineAmount => real()();
  TextColumn get inventDimId => text()();
  TextColumn get transactionDate => text()();
  TextColumn get deviceId => text()();
  IntColumn get syncStatus => integer()();
  IntColumn get companyId => integer()();
}
