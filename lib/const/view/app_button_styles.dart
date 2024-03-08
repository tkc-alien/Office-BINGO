import 'package:flutter/material.dart';

const _kButtonHeight = 48.0;

class AppButtonStyles {
  static final elevatedPrimary = ElevatedButton.styleFrom(
    fixedSize: const Size.fromHeight(_kButtonHeight),
    textStyle: const TextStyle(
      fontSize: 18,
      // fontWeight: FontWeight.bold,
    ),
  );
}
