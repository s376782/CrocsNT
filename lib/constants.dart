import 'package:flutter/material.dart';

class Constants {
  static const Duration defaultDuration = Duration(milliseconds: 300);
  static const double defaultPadding = 16.0;

  static const Color primaryColor = Color(0xFF7B61FF);

  static Color defaultBackgroundColor(BuildContext context) =>
    Theme.of(context).brightness == Brightness.light ? Colors.white : const Color(0xFF101015);
}

