part of '../common.dart';


ThemeMode currentTheme(String? theme) {
  switch (theme) {
    case null:
      return ThemeMode.light;
    case kLight:
      return ThemeMode.light;
    case kDark:
      return ThemeMode.dark;
    default:
      return ThemeMode.system;
  }
}