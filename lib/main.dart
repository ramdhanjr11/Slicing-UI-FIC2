import 'package:flutter/material.dart';
import 'package:slicing_ui_pro1/model/travel_model.dart';
import 'package:slicing_ui_pro1/pages/detail_page.dart';
import 'pages/home_page.dart';
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
      theme: kAppLightThemeData,
      initialRoute: HomePage.routeName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(
              builder: (_) => const HomePage(),
            );
          case DetailPage.routeName:
            final sight = settings.arguments as TravelModel;
            return MaterialPageRoute(
              builder: (_) => DetailPage(
                model: sight,
              ),
            );
        }
        return null;
      },
    );
  }
}
