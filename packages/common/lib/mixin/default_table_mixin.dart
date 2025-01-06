import 'package:drift/drift.dart';

// You can extract common column definitions that you might need in multiple tables into Dart mixins:
mixin DefaultTableMixin on Table {
  // Primary key column
  late final id = integer().autoIncrement()();

  // Column for created at timestamp
  late final createdAt = dateTime().withDefault(currentDateAndTime)();

  // Column for updated at timestamp
  late final updatedAt = dateTime().withDefault(currentDateAndTime)();
}
