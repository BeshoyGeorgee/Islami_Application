import 'package:application_islami/core/theme/application_theme.dart';
import 'package:application_islami/layout/homepage.dart';
import 'package:application_islami/moduls/quran/quran_details_view.dart';
import 'package:application_islami/moduls/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      title: "Islami",
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomePage.routeName: (context) => HomePage(),
        QuranDetailsView.routName: (context) => QuranDetailsView(),
      },
    );
  }
}
