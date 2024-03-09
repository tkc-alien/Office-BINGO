import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// プライマリカラー
  static const primary = Colors.orange;

  /// 画面背景
  static const scaffoldBackground = Color(0xffffcc80);

  /// 背景（画面背景に配置するコンポーネント）
  static const componentBackground = Color(0xffffffff);

  /// 枠（画面背景に配置するコンポーネント）
  static const componentFrame = primary;

  /// 影
  static const shadow = Color(0x1f3b3b3b);

  /// 影（画面背景に配置するコンポーネント）
  static const shadowOnScaffold = Color(0x80ffab1f);

  /// ビンゴシート：枠
  static const bingoSheetFrame = primary;

  /// ビンゴシート：タイル背景
  static const bingoSheetTileBackground = componentBackground;

  /// ビンゴシート：タイル背景（取得済み）
  static const bingoSheetTileBackgroundFulled = Color(0xffffcc80);
}
