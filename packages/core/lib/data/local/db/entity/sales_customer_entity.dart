
import 'package:drift/drift.dart';

class SalesCustomerEntity extends Table {
  TextColumn get customerId => text()();
  TextColumn get customerName => text()();
  TextColumn get address => text().nullable()();
  TextColumn get salesPersonId => text()();
  TextColumn get salesPerson => text().nullable()();
  TextColumn get merchandiser => text().nullable()();
  TextColumn get countryId => text()();
  TextColumn get phoneNumber => text().nullable()();
  RealColumn get latitude => real().withDefault(const Constant(0.0))();
  RealColumn get longitude => real().withDefault(const Constant(0.0))();
  RealColumn get creditLimit => real().nullable()();
  TextColumn get currencyCode => text().nullable()();
  TextColumn get paymentTerm => text().nullable()();
  TextColumn get priceGroup => text().nullable()();
  TextColumn get customreDimension => text().nullable()();
  IntColumn get status => integer()();
  IntColumn get companyId => integer()();
  TextColumn get companyCode => text().nullable()();

  @override
  Set<Column> get primaryKey => {customerId};
}