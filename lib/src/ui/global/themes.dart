import 'package:flutter/material.dart';

class AppThemes {
  static const _primaryColorLight = Color(0xff6ABF64);
  static const _primaryColorDark = Color(0xff3E823C);
  static final _backgroundColor = _primaryColorLight.withOpacity(0.2);
  static const _scaffoldBackgroundColorDark = Color(0xff18191b);

  static ThemeData get light => ThemeData(
        primaryColor: _primaryColorLight,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          background: _backgroundColor,
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(height: 1.5),
        ),
      );

  static ThemeData get dark => ThemeData(
        primaryColor: _primaryColorDark,
        scaffoldBackgroundColor: _scaffoldBackgroundColorDark,
        // fontFamily: "Montserrat",
        colorScheme: ColorScheme.fromSwatch().copyWith(
          background: _backgroundColor,
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            height: 1.5,
          ),
        ),
      );
}
