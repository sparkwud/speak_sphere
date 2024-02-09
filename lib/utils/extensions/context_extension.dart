import 'package:flutter/material.dart';

// USAGE context.
// e.g. context.height

extension ContextExtension on BuildContext {
  // ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get size => mediaQuery.size;
  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  double get height => size.height;
  double get width => size.width;
}
