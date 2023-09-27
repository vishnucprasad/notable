import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notable/presentation/core/colors.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: kPrimaryLightColor,
    primarySwatch: kPrimaryLightSwatch,
    scaffoldBackgroundColor: kLightColor,
    canvasColor: Colors.transparent,
    fontFamily: GoogleFonts.workSans().fontFamily,
  );
}

ThemeData buildDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: kPrimaryDarkColor,
    primarySwatch: kPrimaryDarkSwatch,
    scaffoldBackgroundColor: kDarkColor,
    canvasColor: Colors.transparent,
    fontFamily: GoogleFonts.workSans().fontFamily,
  );
}
