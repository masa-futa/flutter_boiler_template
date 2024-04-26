import 'package:flutter/material.dart';
import 'package:theme/src/color_scheme/dark_color_scheme.dart';
import 'package:theme/src/theme_data/app_bar_theme_data.dart';

class DarkThemeData {
  static ThemeData data() {
    final colorScheme = DarkColorScheme.from();

    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: colorScheme,
      appBarTheme: AppBarThemeData.dark(),
      // 必要に応じてThemeDataを指定すること
    );
  }
}
