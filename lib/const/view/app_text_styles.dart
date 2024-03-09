import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const secondary = TextStyle(
    color: Color(0xffa8a8a8),
  );

  /// 抽選番号の表示フォント
  static const lotteryNumber = TextStyle(
    fontFamily: "JosefinSans",
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
  );
}
