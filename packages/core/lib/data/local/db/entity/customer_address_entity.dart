import 'package:drift/drift.dart';

@TableIndex(name: 'customer_id', columns: {#customerId})
class CustomerAddressEntity extends Table {
  TextColumn get customerId => text()();
  TextColumn get deliveryName => text()();
  TextColumn get address => text()();
  TextColumn get salesPersonId => text()();
  RealColumn get latitude => real().withDefault(const Constant(0.0))();
  RealColumn get longitude => real().withDefault(const Constant(0.0))();
  TextColumn get postalAddress => text()();
  TextColumn get location => text()();
  BoolColumn get isPrimary => boolean()();
  TextColumn get companyCode => text()();
  IntColumn get companyId => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {location};
}
