import 'package:flutter/material.dart';
import 'package:theme/src/color_scheme/light_color_scheme.dart';
import 'package:theme/src/theme_data/app_bar_theme_data.dart';

class LightThemeData {
  static ThemeData data() {
    final colorScheme = LightColorScheme.from();

    return ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: colorScheme,
      appBarTheme: AppBarThemeData.light(),
      // 必要に応じてThemeDataを指定すること
    );
  }
}
