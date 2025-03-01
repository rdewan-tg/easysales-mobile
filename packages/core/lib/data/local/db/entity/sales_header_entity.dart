import 'package:drift/drift.dart';

class SalesHeaderEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get salesId => text().unique()();
  TextColumn get customerId => text()();
  TextColumn get customerName => text()();
  TextColumn get customerAddress => text()();
  TextColumn get salesPersonId => text()();
  TextColumn get customerRequisition => text()();
  TextColumn get customerPriceGroup => text()();
  TextColumn get note => text()();
  TextColumn get deliveryAddressLocation => text()();
  TextColumn get deliveryDate => text()();
  TextColumn get transactionDate => text()();
  TextColumn get deviceId => text()();
  IntColumn get syncStatus => integer()();
  IntColumn get companyId => integer()();
}
