import 'package:drift/drift.dart';

class ProductEntity extends Table {
  IntColumn get id => integer()();
  TextColumn get productId => text()();
  TextColumn get itemId => text()();
  TextColumn get productName => text()();
  TextColumn get description => text()();
  TextColumn get category => text()();
  TextColumn get barcode => text()();
  TextColumn get itemGroup => text()();
  TextColumn get packSize => text()();
  TextColumn get salesUnit => text()();
  RealColumn get unitPrice => real()();
  TextColumn get image => text()();
  TextColumn get itemDiscountGroup => text()();
  TextColumn get itemFOCGroup => text()();
  TextColumn get inventDimId => text()();
  TextColumn get status => text()();
  TextColumn get companyCode => text().nullable()();
  IntColumn get companyId => integer()();

  @override
  Set<Column<Object>> get primaryKey => {itemId};
}
