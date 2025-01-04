
import 'package:drift/drift.dart';

class SettingEntity extends Table {
  TextColumn get key => text()(); // Unique identifier for each setting (e.g., 'themeMode')
  TextColumn get value => text().nullable()(); // Value of the setting (e.g., 'light', 'dark')
  
  @override
  Set<Column>? get primaryKey => {key}; // Ensure each key is unique
}