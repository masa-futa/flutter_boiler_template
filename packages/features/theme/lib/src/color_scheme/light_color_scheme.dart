import 'package:flutter/material.dart';

class LightColorScheme extends ColorScheme {
  LightColorScheme._({
    required super.brightness,
    required super.primary,
    required super.onPrimary,
    required super.secondary,
    required super.onSecondary,
    required super.error,
    required super.onError,
    required super.background,
    required super.onBackground,
    required super.surface,
    required super.onSurface,
    super.primaryContainer,
    super.onPrimaryContainer,
    super.secondaryContainer,
    super.onSecondaryContainer,
    super.tertiary,
    super.tertiaryContainer,
    super.onTertiary,
    super.onTertiaryContainer,
    super.errorContainer,
    super.onErrorContainer,
    super.outline,
    super.surfaceVariant,
    super.onSurfaceVariant,
  });

  factory LightColorScheme.from() {
    final light = _colorScheme;

    return LightColorScheme._(
      brightness: light.brightness,
      primary: light.primary,
      primaryContainer: light.primaryContainer,
      onPrimary: light.onPrimary,
      onPrimaryContainer: light.onPrimaryContainer,
      secondary: light.secondary,
      secondaryContainer: light.secondaryContainer,
      onSecondary: light.onSecondary,
      onSecondaryContainer: light.onSecondaryContainer,
      error: light.error,
      errorContainer: light.errorContainer,
      onError: light.onError,
      onErrorContainer: light.onErrorContainer,
      background: light.background,
      onBackground: light.onBackground,
      surface: light.surface,
      onSurface: light.onSurface,
      tertiary: light.tertiary,
      tertiaryContainer: light.tertiaryContainer,
      onTertiary: light.onTertiary,
      onTertiaryContainer: light.onTertiaryContainer,
      outline: light.outline,
      surfaceVariant: light.surfaceVariant,
      onSurfaceVariant: light.onSurfaceVariant,
    );
  }

  /// 参考[https://m3.material.io/theme-builder#/custom]
  static ColorScheme get _colorScheme => ColorScheme.light(
        primary: Color(0xffe6843d),
        primaryContainer: Color(0xffffdbc7),
        onPrimary: Color(0xffffffff),
        onPrimaryContainer: Color(0xff311300),
        secondary: Color(0xff755846),
        secondaryContainer: Color(0xffffdbc7),
        onSecondary: Color(0xffffffff),
        onSecondaryContainer: Color(0xffb1709),
        tertiary: Color(0xff606134),
        tertiaryContainer: Color(0xffe7e6ad),
        onTertiary: Color(0xffffffff),
        onTertiaryContainer: Color(0xff1c1d00),
        error: Color(0xffba1a1a),
        errorContainer: Color(0xffffdad6),
        onError: Color(0xffffffff),
        onErrorContainer: Color(0xff410002),
        background: Color(0xfffffbff),
        onBackground: Color(0xff201a17),
        surface: Color(0xfffffbff),
        onSurface: Color(0xff201a17),
        outline: Color(0xff84746a),
        surfaceVariant: Color(0xfff4ded3),
        onSurfaceVariant: Color(0xff52443c),
      );
}
