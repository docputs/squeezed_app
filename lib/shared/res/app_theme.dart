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
      colorScheme: ColorScheme.fromSwatch(accentColor: AppColors.accent),
      canvasColor: Colors.white,
      dividerColor: AppColors.greyDark,
      errorColor: AppColors.error,
      scaffoldBackgroundColor: Colors.white,
      indicatorColor: AppColors.accent,
      textSelectionTheme: _buildTextSelectionTheme(),
      textTheme: const TextTheme(
        bodyText2: TextStyle(color: AppColors.greyDark, fontSize: 16),
      ),
      inputDecorationTheme: _buildInputDecorationTheme(),
      textButtonTheme: _buildTextButtonTheme(),
      bottomNavigationBarTheme: _buildBottomNavBarTheme(),
    );
  }

  BottomNavigationBarThemeData _buildBottomNavBarTheme() {
    return const BottomNavigationBarThemeData(
      unselectedItemColor: AppColors.grey,
      selectedItemColor: AppColors.primary,
    );
  }

  TextButtonThemeData _buildTextButtonTheme() {
    return TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(AppColors.primary),
      ),
    );
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
