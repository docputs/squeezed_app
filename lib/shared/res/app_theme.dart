import 'package:flutter/material.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/shared/res/constants.dart';

class AppTheme {
  final BuildContext context;

  const AppTheme(this.context);

  ThemeData generate() {
    return ThemeData(
      primaryColor: AppColors.primary,
      primaryColorLight: AppColors.primaryLight,
      primaryColorDark: AppColors.primaryDark,
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
      button: TextStyle(color: AppColors.greyDark, fontSize: 16),
      bodyText2: TextStyle(color: AppColors.greyDark, fontSize: 16),
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
      style: TextButton.styleFrom(primary: AppColors.primary),
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
