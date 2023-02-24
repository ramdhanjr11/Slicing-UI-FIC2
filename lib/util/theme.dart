import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kGreyAppColor = Color(0xFFFEFEFE);
const Color kGrey2AppColor = Color(0xFFD5D9E5);
const Color kPrimaryAppColor = Color(0xFF487DD2);
const Color kTextAppColor = Color(0xFF020021);

TextTheme kAppTextTheme = TextTheme(
  displayLarge: GoogleFonts.openSans(
      fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  displayMedium: GoogleFonts.openSans(
      fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  displaySmall: GoogleFonts.openSans(fontSize: 48, fontWeight: FontWeight.w400),
  headlineMedium: GoogleFonts.openSans(
      fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headlineSmall:
      GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.w400),
  titleLarge: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  titleMedium: GoogleFonts.openSans(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  titleSmall: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge: GoogleFonts.roboto(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyMedium: GoogleFonts.roboto(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  labelLarge: GoogleFonts.roboto(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  bodySmall: GoogleFonts.roboto(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  labelSmall: GoogleFonts.roboto(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

ThemeData kAppThemeData = ThemeData(
  textTheme: kAppTextTheme,
  primaryColor: kPrimaryAppColor,
  scaffoldBackgroundColor: kGreyAppColor,
);
