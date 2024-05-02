import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class AppTheme {
  static const white = Colors.white;
  static const scaffoldBgColor = Colors.black;
  static const primaryColor = Color(0xFF171717);
  static final ThemeData lightTheme = ThemeData(
    hintColor: white,
    focusColor: white,
    dividerColor: const Color(0xFFE2E8E6),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    ),
    colorScheme: const ColorScheme.light(primary: primaryColor),
    scaffoldBackgroundColor: scaffoldBgColor,
  );
}
