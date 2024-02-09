import 'package:flutter/material.dart';

extension AppThemeExtension on BuildContext {
  // * (default) TextTheme

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;

  TextStyle? get h1 => theme.textTheme.displayLarge;
  TextStyle? get h2 => theme.textTheme.displayMedium;
  TextStyle? get h3 => theme.textTheme.displaySmall;
  TextStyle? get h4 => theme.textTheme.headlineMedium;
  TextStyle? get h5 => theme.textTheme.headlineSmall;
  TextStyle? get h6 => theme.textTheme.titleLarge;

  TextStyle? get sub1 => theme.textTheme.titleMedium;
  TextStyle? get sub2 => theme.textTheme.titleSmall;

  TextStyle? get body1 => theme.textTheme.bodyLarge;
  TextStyle? get body2 => theme.textTheme.bodyMedium;

  TextStyle? get button => theme.textTheme.labelLarge;

  // * PrimaryTextTheme
  TextStyle? get pH1 => theme.primaryTextTheme.displayLarge;
  TextStyle? get pH2 => theme.primaryTextTheme.displayMedium;
  TextStyle? get pH3 => theme.primaryTextTheme.displaySmall;
  TextStyle? get pH4 => theme.primaryTextTheme.headlineMedium;
  TextStyle? get pH5 => theme.primaryTextTheme.headlineSmall;
  TextStyle? get pH6 => theme.primaryTextTheme.titleLarge;

  TextStyle? get pSub1 => theme.primaryTextTheme.titleMedium;
  TextStyle? get pSub2 => theme.primaryTextTheme.titleSmall;

  TextStyle? get pBody1 => theme.primaryTextTheme.bodyLarge;
  TextStyle? get pBody2 => theme.primaryTextTheme.bodyMedium;

  TextStyle? get pButton => theme.primaryTextTheme.labelLarge;
}
