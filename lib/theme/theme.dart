// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lit_code/constants/constants.dart';

final elevatedButtonTextTheme = GoogleFonts.poppins(
  fontSize: elevatedButtonTextSize,
  fontWeight: FontWeight.w600,
  letterSpacing: 1.5,
  color: Colors.white,
);

final lightInputTextTheme = GoogleFonts.poppins(
  fontSize: inputTextSize,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

final darkInputTextTheme = GoogleFonts.poppins(
  fontSize: inputTextSize,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

// ---------------------------- Light ElevatedButtonThemeData ----------------------------
final ElevatedButtonThemeData lightElevatedButtonThemeData =
    ElevatedButtonThemeData(
  style: ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(
        vertical: elevatedButtonVerticalPadding,
        horizontal: elevatedButtonHorizontalPadding,
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(elevatedButtonColor),
  ),
);

// ---------------------------- Dark ElevatedButtonThemeData ----------------------------
final ElevatedButtonThemeData darkElevatedButtonThemeData =
    ElevatedButtonThemeData(
  style: ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(
        vertical: elevatedButtonVerticalPadding,
        horizontal: elevatedButtonHorizontalPadding,
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(elevatedButtonColor),
  ),
);

// ---------------------------- Dark TextTheme ----------------------------
final TextTheme darkTextTheme = TextTheme(
  headline1: GoogleFonts.poppins(
    fontSize: headline1Size,
    fontWeight: FontWeight.w900,
    color: darkHeadLine1,
  ),
  headline2: GoogleFonts.poppins(
    fontSize: headline2Size,
    fontWeight: FontWeight.w700,
    color: darkHeadLine1,
  ),
  labelMedium: GoogleFonts.openSans(
    fontSize: labelMediumSize,
    fontWeight: FontWeight.w700,
    color: darkHeadLine1,
  ),
);

// ---------------------------- Light TextTheme ----------------------------
final TextTheme lightTextTheme = TextTheme(
  headline1: GoogleFonts.poppins(
    fontSize: headline1Size,
    fontWeight: FontWeight.w900,
    color: lightHeadLine1,
  ),
  headline2: GoogleFonts.poppins(
    fontSize: headline2Size,
    fontWeight: FontWeight.w700,
    color: lightHeadLine1,
  ),
  labelMedium: GoogleFonts.openSans(
    fontSize: labelMediumSize,
    fontWeight: FontWeight.w700,
    color: lightHeadLine1,
  ),
);

// ---------------------------- Light Theme ----------------------------
final ThemeData lightAppTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: lightTextTheme,
  elevatedButtonTheme: lightElevatedButtonThemeData,
  useMaterial3: true,
);
// ---------------------------- Dark Theme ----------------------------
final ThemeData darkAppTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: darkTextTheme,
  elevatedButtonTheme: darkElevatedButtonThemeData,
  useMaterial3: true,
);
