import 'package:flutter/material.dart';
import 'package:office_bingo/const/view/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  /**
   * MaterialDesign3 Typography
   * https://m3.material.io/styles/typography/type-scale-tokens#40fc37f8-3269-4aa3-9f28-c6113079ac5d
   */

  /// TextTheme
  static const theme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  );

  // Typographical style: Display -------------------------

  /// Display Large
  static const displayLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 57,
    height: 64 / 57,
    letterSpacing: 0,
    color: AppColors.foregroundPrimary,
  );

  /// Display Medium
  static const displayMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 45,
    height: 52 / 45,
    letterSpacing: 0,
    color: AppColors.foregroundPrimary,
  );

  /// Display Small
  static const displaySmall = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 36,
    height: 44 / 36,
    letterSpacing: 0,
    color: AppColors.foregroundPrimary,
  );

  // Typographical style: Headline ------------------------

  /// Headline Large
  static const headlineLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 32,
    height: 40 / 32,
    letterSpacing: 0,
    color: AppColors.foregroundPrimary,
  );

  /// Headline Medium
  static const headlineMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 28,
    height: 36 / 28,
    letterSpacing: 0,
    color: AppColors.foregroundPrimary,
  );

  /// Headline Small
  static const headlineSmall = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    height: 32 / 24,
    letterSpacing: 0,
    color: AppColors.foregroundPrimary,
  );

  // Typographical style: Title ---------------------------

  /// Title Large
  static const titleLarge = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 22,
    height: 28 / 22,
    letterSpacing: 0,
    color: AppColors.foregroundPrimary,
  );

  /// Title Medium
  static const titleMedium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0.15,
    color: AppColors.foregroundPrimary,
  );

  /// Title Small
  static const titleSmall = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.1,
    color: AppColors.foregroundPrimary,
  );

  // Typographical style: Body ----------------------------

  /// Body Large
  static const bodyLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0.15,
    color: AppColors.foregroundSecondary,
  );

  /// Body Medium
  static const bodyMedium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.25,
    color: AppColors.foregroundSecondary,
  );

  /// Body Small
  static const bodySmall = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 16 / 12,
    letterSpacing: 0.4,
    color: AppColors.foregroundSecondary,
  );

  // Typographical style: Label ---------------------------

  /// Label Large
  static const labelLarge = TextStyle(
    fontWeight: FontWeight.w700, // Custom
    fontSize: 16, // Custom
    height: 24 / 16,
    letterSpacing: 0.5, // Custom
  );

  /// Label Medium
  static const labelMedium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 16 / 12,
    letterSpacing: 0.5,
  );

  /// Label Small
  static const labelSmall = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 11,
    height: 16 / 11,
    letterSpacing: 0.5,
  );

  // Other ------------------------------------------------

  /// 抽選番号の表示フォント
  static const lotteryNumber = TextStyle(
    fontFamily: "JosefinSans",
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
    color: AppColors.foregroundPrimary,
  );
}
