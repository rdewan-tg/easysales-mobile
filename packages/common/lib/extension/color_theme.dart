part of '../common.dart';

extension ColorThemeContext on BuildContext {
  ThemeData get themeColor => Theme.of(this);
}