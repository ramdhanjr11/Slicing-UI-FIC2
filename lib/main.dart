import 'package:flutter/material.dart';
import 'package:slicing_ui_pro1/home_page.dart';
import 'package:slicing_ui_pro1/util/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slicing UI PRO 1',
      theme: kAppThemeData,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
