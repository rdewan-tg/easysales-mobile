import 'package:drift/drift.dart';

class SearchMerchandiserCustomerHistoryEntity extends Table {
  TextColumn get key => text()();

  @override
  Set<Column>? get primaryKey => {key}; // Ensure each key is unique
}
