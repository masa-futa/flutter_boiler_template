import 'package:flutter/material.dart';

/// AppBar Theme
class AppBarThemeData extends AppBarTheme {
  AppBarThemeData._({
    required super.color,
    required super.foregroundColor,
    required super.backgroundColor,
    required super.centerTitle,
    required super.titleTextStyle,
    required super.elevation,
  });

  factory AppBarThemeData.light() => AppBarThemeData._(
        color: Colors.white,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1,
        ),
        elevation: 0,
      );

  factory AppBarThemeData.dark() => AppBarThemeData._(
        color: Colors.black,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1,
        ),
        elevation: 0,
      );
}
