import 'package:flutter/material.dart';
import 'package:squeezed_app/shared/res/constants.dart';

import 'app_colors.dart';

class AppTheme {
  final BuildContext context;

  const AppTheme(this.context);

  ThemeData generate() {
    return ThemeData(
      primaryColor: AppColors.primary,
      primaryColorLight: AppColors.primaryLight,
      primaryColorDark: AppColors.primaryDark,
      accentColor: AppColors.accent,
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: AppColors.primary,
            secondary: AppColors.primary,
          ),
      splashColor: AppColors.primaryLight.withOpacity(.2),
      canvasColor: Colors.white,
      highlightColor: AppColors.primaryLight.withOpacity(.05),
      dividerColor: AppColors.greyDark,
      errorColor: AppColors.error,
      scaffoldBackgroundColor: Colors.white,
      indicatorColor: AppColors.accent,
      textSelectionTheme: _buildTextSelectionTheme(),
      textTheme: _buildTextTheme(),
      inputDecorationTheme: _buildInputDecorationTheme(),
      textButtonTheme: _buildTextButtonTheme(),
      bottomNavigationBarTheme: _buildBottomNavBarTheme(),
    );
  }

  TextTheme _buildTextTheme() {
    return const TextTheme(
      bodyText2: TextStyle(color: AppColors.greyDark, fontSize: 16),
      headline1: TextStyle(color: AppColors.greyDark, fontSize: 31),
      headline2: TextStyle(color: AppColors.greyDark, fontSize: 25),
      headline3: TextStyle(color: AppColors.greyDark, fontSize: 20),
      subtitle1: TextStyle(color: AppColors.greyDark, fontSize: 13),
      subtitle2: TextStyle(color: AppColors.greyDark, fontSize: 10),
    );
  }

  BottomNavigationBarThemeData _buildBottomNavBarTheme() {
    return const BottomNavigationBarThemeData(
      unselectedItemColor: AppColors.grey,
      selectedItemColor: AppColors.primary,
    );
  }

  TextButtonThemeData _buildTextButtonTheme() {
    return TextButtonThemeData(style: TextButton.styleFrom(primary: AppColors.primary));
  }

  InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
      hintStyle: const TextStyle(color: AppColors.grey),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
        borderRadius: BorderRadius.circular(Constants.defaultBorderRadius),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.grey),
        borderRadius: BorderRadius.circular(Constants.defaultBorderRadius),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Constants.defaultBorderRadius),
        borderSide: const BorderSide(color: AppColors.primary),
      ),
    );
  }

  TextSelectionThemeData _buildTextSelectionTheme() {
    return const TextSelectionThemeData(
      cursorColor: AppColors.primaryLight,
      selectionColor: AppColors.primaryLight,
      selectionHandleColor: AppColors.primaryLight,
    );
  }
}
