import 'package:flutter/material.dart';

class AppThemes {
  static const _primaryColorLight = Color(0xff306abc);
  static const _primaryColorDark = Color(0xff1c55a5);
  static const _scaffoldBackgroundColorDark = Color(0xff18191b);
  static const _darkThemeTextColor = Color(0xfffafafa);

  static ThemeData get light => ThemeData(
      primaryColor: _primaryColorLight,
      colorScheme: ColorScheme.fromSwatch().copyWith(),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(height: 1.5),
      ));

  static ThemeData get dark => ThemeData(
        primaryColor: _primaryColorDark,
        scaffoldBackgroundColor: _scaffoldBackgroundColorDark,
        // fontFamily: "Montserrat",
        colorScheme: ColorScheme.fromSwatch().copyWith(),
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            color: _darkThemeTextColor,
          ),
          headlineSmall: TextStyle(
            color: _darkThemeTextColor,
          ),
          titleLarge: TextStyle(
            color: _darkThemeTextColor,
          ),
          bodyMedium: TextStyle(color: _darkThemeTextColor, height: 3),
        ),
      );
}
