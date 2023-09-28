import 'dart:async';

import 'package:application_islami/core/theme/application_theme.dart';
import 'package:application_islami/layout/homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "spalsh_screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, HomePage.routeName);
    });
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        ApplicationTheme.isDark
            ? "assets/images/dark_splash – 1@3x.png"
            : "assets/images/splash3x.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
