import 'package:flutter/material.dart';

class ThemeClass{

  static ThemeData light = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
      )
  );

  static ThemeData dark = ThemeData(
      scaffoldBackgroundColor: Colors.grey,
      colorScheme: ColorScheme.dark(),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
      )
  );
}