import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFFFFFFF),// white color
    onPrimary: Colors.white,
    secondary: Colors.green,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.grey,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
  ),
  // Add other theme configurations as needed
);
