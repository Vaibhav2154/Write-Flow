import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppThme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
          borderSide: BorderSide(
            color: color,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10)
        );
  static final darkThemeMOde = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppPallete.backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppPallete.backgroundColor,
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(27),
        enabledBorder: _border(),
        focusedBorder: _border(AppPallete.gradient2),

      ));
}
