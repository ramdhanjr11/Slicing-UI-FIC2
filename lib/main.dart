import 'package:flutter/material.dart';
import 'package:ui_pro_2/pages/home_page.dart';
import 'package:ui_pro_2/themes/theme.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true).copyWith(
        textTheme: appTextTheme,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: appBottomNavigationTheme,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
