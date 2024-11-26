part of '../common.dart';

extension TextThemeContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}