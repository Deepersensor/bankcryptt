import 'package:flutter/material.dart';
import 'colors.dart';
import 'typography.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      accentColor: AppColors.secondary,
      backgroundColor: AppColors.background,
      scaffoldBackgroundColor: AppColors.background,
      errorColor: AppColors.error,
      textTheme: TextTheme(
        headline1: AppTypography.headline1,
        bodyText1: AppTypography.bodyText1,
        button: AppTypography.button,
      ),
      appBarTheme: AppBarTheme(
        color: AppColors.primary,
        textTheme: TextTheme(
          headline6: AppTypography.headline1,
        ),
        iconTheme: IconThemeData(
          color: AppColors.onPrimary,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primary,
        textTheme: ButtonTextTheme.primary,
      ),
      // Define other theme properties as needed
    );
  }
}
