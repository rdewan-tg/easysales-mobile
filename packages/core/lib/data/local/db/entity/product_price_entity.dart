import 'package:drift/drift.dart';

class ProductPriceEntity extends Table {
  IntColumn get id => integer()();
  TextColumn get productId => text()();
  TextColumn get itemId => text()();
  TextColumn get packSize => text()();
  DateTimeColumn get fromDate => dateTime()();
  DateTimeColumn get toDate => dateTime()();
  RealColumn get unitPrice => real()();
  TextColumn get salesUnit => text()();
  TextColumn get currencyCode => text()();
  TextColumn get priceGroup => text()();
  TextColumn get recId => text()();
  IntColumn get companyId => integer()();
  TextColumn get companyCode => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {recId};
}
