import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui_pro1/util/circle_tab_indicator.dart';

const Color kGreyAppColor = Color.fromARGB(255, 243, 243, 243);
const Color kGrey2AppColor = Color(0xFFD5D9E5);
const Color kPrimaryAppColor = Color(0xFF487DD2);
const Color kTextAppColor = Color(0xFF020021);

TextTheme kAppTextTheme = TextTheme(
  displayLarge: GoogleFonts.poppins(
      fontSize: 100, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  displayMedium: GoogleFonts.poppins(
      fontSize: 62, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  displaySmall: GoogleFonts.poppins(fontSize: 50, fontWeight: FontWeight.w400),
  headlineMedium: GoogleFonts.poppins(
      fontSize: 35, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headlineSmall: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w400),
  titleLarge: GoogleFonts.poppins(
      fontSize: 21, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  titleMedium: GoogleFonts.poppins(
      fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  titleSmall: GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge: GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyMedium: GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  labelLarge: GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  bodySmall: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  labelSmall: GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

ThemeData kAppLightThemeData = ThemeData.light(useMaterial3: true).copyWith(
  primaryColor: kPrimaryAppColor,
  scaffoldBackgroundColor: kGreyAppColor,
  appBarTheme: const AppBarTheme(color: kGreyAppColor),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(color: kPrimaryAppColor),
    unselectedIconTheme: IconThemeData(color: Colors.black26),
  ),
  tabBarTheme: TabBarTheme(
    indicatorColor: kPrimaryAppColor,
    labelColor: kPrimaryAppColor,
    labelStyle: kAppTextTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
    unselectedLabelStyle: kAppTextTheme.titleSmall,
    indicator: CircleTabIndicator(color: kPrimaryAppColor, radius: 4),
  ),
);
