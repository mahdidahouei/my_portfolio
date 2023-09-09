import 'package:flutter/material.dart';

class AppThemes {
  static const _primaryColorLight = Color(0xff306abc);
  static const _primaryColorDark = Color(0xff1c55a5);
  static const _scaffoldBackgroundColorDark = Color(0xff18191b);

  static ThemeData get light => ThemeData(
        primaryColor: _primaryColorLight,
        colorScheme: ColorScheme.fromSwatch().copyWith(),
      );

  static ThemeData get dark => ThemeData(
      primaryColor: _primaryColorDark,
      scaffoldBackgroundColor: _scaffoldBackgroundColorDark,
      colorScheme: ColorScheme.fromSwatch().copyWith());
}
