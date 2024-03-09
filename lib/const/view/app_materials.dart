import 'package:flutter/material.dart';
import 'package:office_bingo/const/view/app_colors.dart';

class AppMaterials {
  AppMaterials._();

  static const shadow = BoxShadow(
    color: AppColors.shadow,
    spreadRadius: 2,
    blurRadius: 8,
  );

  static const shadowOnScaffold = BoxShadow(
    color: AppColors.shadowOnScaffold,
    spreadRadius: 2,
    blurRadius: 8,
  );
}
