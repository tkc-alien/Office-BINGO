import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// プライマリカラーセット
  static const primarySwatch = Colors.orange;

  /// Primary background
  static const primary = Color(0xfff57c00);

  /// Primary foreground
  static const onPrimary = Color(0xffffffff);

  /// Secondary background
  static const secondary = Color(0xffffa726);

  /// Secondary foreground
  static const onSecondary = Color(0xffffffff);

  /// Disabled background
  static const disabled = Color(0xffffdbaf);

  /// Disabled foreground
  static const onDisabled = Color(0xffffffff);

  /// Disabled background（Scaffold常に配置する場合）
  static const disabledOnScaffold = Color(0xffdeaf69);

  /// Disabled foreground（Scaffold常に配置する場合）
  static const onDisabledOnScaffold = Color(0xffffffff);

  /// 画面背景
  static const scaffoldBackground = Color(0xffffcc80);

  /// 背景（画面背景に配置するコンポーネント）
  static const componentBackground = Color(0xffffffff);

  /// 背景（ダイアログ）
  static const dialogBackground = componentBackground;

  /// 枠（画面背景に配置するコンポーネント）
  static const Color componentFrame = primarySwatch;

  /// 影
  static const shadow = Color(0x1f3b3b3b);

  /// 影（画面背景に配置するコンポーネント）
  static const shadowOnScaffold = Color(0x80ffab1f);

  /// ビンゴシート：タイル背景
  static const bingoSheetTileBackground = componentBackground;

  /// ビンゴシート：タイル背景（取得済み）
  static const bingoSheetTileBackgroundFulled = Color(0xffffcc80);
}
