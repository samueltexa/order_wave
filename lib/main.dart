import 'package:flutter/material.dart';
import 'package:order_wave/src/features/introduction/introduction.dart';
import 'package:order_wave/themes/app_themes.dart';

void main() {
  runApp(MaterialApp(
    theme: appTheme,
    debugShowCheckedModeBanner: false,
    home: const IntroductionPage(),
  ));
}

