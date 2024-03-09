import 'package:flutter/material.dart';
import 'package:office_bingo/const/view/app_colors.dart';

const _kButtonHeight = 60.0;

class AppButtonStyles {
  static final themeStyle = ElevatedButton.styleFrom(
    shadowColor: Colors.transparent,
    fixedSize: const Size.fromHeight(_kButtonHeight),
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      // fontWeight: FontWeight.bold,
    ),
  );

  static final elevatedPrimary = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.onPrimary,
    disabledBackgroundColor: AppColors.disabled,
    disabledForegroundColor: AppColors.onDisabled,
  );

  static final elevatedPrimaryOnScaffold = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.onPrimary,
    disabledBackgroundColor: AppColors.disabledOnScaffold,
    disabledForegroundColor: AppColors.onDisabled,
  );

  static final elevatedSecondary = ElevatedButton.styleFrom(
    backgroundColor: AppColors.secondary,
    foregroundColor: AppColors.onSecondary,
    disabledBackgroundColor: AppColors.disabled,
    disabledForegroundColor: AppColors.onDisabled,
  );

  static final elevatedSecondaryOnScaffold = ElevatedButton.styleFrom(
    backgroundColor: AppColors.secondary,
    foregroundColor: AppColors.onSecondary,
    disabledBackgroundColor: AppColors.disabledOnScaffold,
    disabledForegroundColor: AppColors.onDisabledOnScaffold,
  );
}
