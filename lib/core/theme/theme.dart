import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 3,
      ),
      borderRadius: BorderRadius.circular(10));
  static final darkThemeMOde = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppPallete.primaryFgColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppPallete.primaryFgColor,
        elevation: 0,
      ),
      chipTheme: ChipThemeData(
        color: MaterialStateProperty.all(AppPallete.primaryFgColor),
        side: BorderSide.none,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(27),
        enabledBorder: _border(),
        focusedBorder: _border(AppPallete.gradient2),
      ));
}
