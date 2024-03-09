import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Theme -----------------------------------------------

  /// PrimarySwatch
  static const primarySwatch = Colors.orange;

  /// Primary background
  static const primary = Color(0xfff57c00);

  /// Secondary background
  static const secondary = Color(0xffffa726);

  /// Disabled background
  static const disabled = Color(0xffffdbaf);

  /// Disabled background（Scaffold常に配置する場合）
  static const disabledOnScaffold = Color(0xffdeaf69);

  // Background -------------------------------------------

  /// 画面背景
  static const scaffoldBackground = Color(0xffffcc80);

  /// 背景（画面背景に配置するコンポーネント）
  static const componentBackground = Color(0xffffffff);

  /// 背景（ダイアログ）
  static const dialogBackground = componentBackground;

  // Foreground -------------------------------------------

  /// Primary foreground
  static const foregroundPrimary = Color(0xff2f2f2f);

  /// Secondary foreground
  static const foregroundSecondary = Color(0xffa8a8a8);

  /// onPrimary
  static const onPrimary = Color(0xffffffff);

  /// onSecondary
  static const onSecondary = Color(0xffffffff);

  /// onDisabled
  static const onDisabled = Color(0xffffffff);

  /// onDisabled（Scaffold上に配置する場合）
  static const onDisabledOnScaffold = Color(0xffffffff);

  // Material ---------------------------------------------

  /// 枠（画面背景に配置するコンポーネント）
  static const Color componentFrame = primarySwatch;

  /// 影
  static const shadow = Color(0x1f3b3b3b);

  /// 影（画面背景に配置するコンポーネント）
  static const shadowOnScaffold = Color(0x80ffab1f);

  // Other ------------------------------------------------

  /// ビンゴシート：タイル背景
  static const bingoSheetTileBackground = componentBackground;

  /// ビンゴシート：タイル背景（取得済み）
  static const bingoSheetTileBackgroundFulled = Color(0xffffcc80);
}
