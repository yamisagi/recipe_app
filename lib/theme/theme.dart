import 'package:flutter/material.dart';

class ProductTheme {
  static ThemeData lightTheme = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
      appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    scrolledUnderElevation: 0,
  ));
}
