import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTheme {
  static const white = Colors.white;
  static const scaffoldBgColor = Colors.black;
  static const primaryColor = Color(0xFF171717);
  static final ThemeData lightTheme = ThemeData(
    hintColor: white,
    focusColor: white,
    dividerColor: const Color(0xFFE2E8E6),
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      iconTheme: IconThemeData(color: white),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(
        color: white,
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: white,
        fontSize: 15.sp,
      ),
    ),
    colorScheme: const ColorScheme.light(primary: primaryColor),
    scaffoldBackgroundColor: scaffoldBgColor,
  );
}
