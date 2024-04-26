import 'package:flutter/material.dart';

class DarkColorScheme extends ColorScheme {
  DarkColorScheme._({
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

  factory DarkColorScheme.from() {
    final dark = _colorScheme;

    return DarkColorScheme._(
      brightness: dark.brightness,
      primary: dark.primary,
      primaryContainer: dark.primaryContainer,
      onPrimary: dark.onPrimary,
      onPrimaryContainer: dark.onPrimaryContainer,
      secondary: dark.secondary,
      secondaryContainer: dark.secondaryContainer,
      onSecondary: dark.onSecondary,
      onSecondaryContainer: dark.onSecondaryContainer,
      error: dark.error,
      errorContainer: dark.errorContainer,
      onError: dark.onError,
      onErrorContainer: dark.onErrorContainer,
      background: dark.background,
      onBackground: dark.onBackground,
      surface: dark.surface,
      onSurface: dark.onSurface,
      tertiary: dark.tertiary,
      tertiaryContainer: dark.tertiaryContainer,
      onTertiary: dark.onTertiary,
      onTertiaryContainer: dark.onTertiaryContainer,
      outline: dark.outline,
      surfaceVariant: dark.surfaceVariant,
      onSurfaceVariant: dark.onSurfaceVariant,
    );
  }

  /// 参考[https://m3.material.io/theme-builder#/custom]
  static ColorScheme get _colorScheme => ColorScheme.dark(
        primary: Color(0xffffb688),
        primaryContainer: Color(0xff733600),
        onPrimary: Color(0xff512400),
        onPrimaryContainer: Color(0xffffdbc7),
        secondary: Color(0xffe5bfa9),
        secondaryContainer: Color(0xff5b4130),
        onSecondary: Color(0xff432b1c),
        onSecondaryContainer: Color(0xffffdbc7),
        tertiary: Color(0xffcaca93),
        tertiaryContainer: Color(0xff48491e),
        onTertiary: Color(0xff32320a),
        onTertiaryContainer: Color(0xffe7e6ad),
        error: Color(0xffffb4ab),
        errorContainer: Color(0xff93000a),
        onError: Color(0xff690005),
        onErrorContainer: Color(0xffffdad6),
        background: Color(0xff201a17),
        onBackground: Color(0xffece0da),
        surface: Color(0xff201a17),
        onSurface: Color(0xffece0da),
        outline: Color(0xff9f8d83),
        surfaceVariant: Color(0xff52443c),
        onSurfaceVariant: Color(0xffd7c3b8),
      );
}
