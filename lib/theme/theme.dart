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
    backgroundColor: MaterialStateProperty.all<Color>(darkPrimaryColor),
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
    backgroundColor: MaterialStateProperty.all<Color>(darkPrimaryColor),
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
  headline3: GoogleFonts.poppins(
    fontSize: headline3Size,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  headline4: GoogleFonts.poppins(
    fontSize: headline4Size,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  headline5: GoogleFonts.poppins(
    fontSize: headline5Size,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  headline6: GoogleFonts.poppins(
    fontSize: headline6Size,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  subtitle1: GoogleFonts.openSans(
    fontSize: subtitle1Size,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  subtitle2: GoogleFonts.openSans(
    fontSize: subtitle2Size,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
);

// ---------------------------- Light TextTheme ----------------------------
final TextTheme lightTextTheme = TextTheme(
  headline1: GoogleFonts.poppins(
    fontSize: headline1Size,
    fontWeight: FontWeight.w900,
    color: lightPrimaryColor,
  ),
  headline2: GoogleFonts.poppins(
    fontSize: headline2Size,
    fontWeight: FontWeight.w700,
    color: lightPrimaryColor,
  ),
  headline3: GoogleFonts.poppins(
    fontSize: headline3Size,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),
  headline4: GoogleFonts.poppins(
    fontSize: headline4Size,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),
  subtitle1: GoogleFonts.openSans(
    fontSize: subtitle1Size,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  subtitle2: GoogleFonts.openSans(
    fontSize: subtitle2Size,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
);

const BottomNavigationBarThemeData lightBottomNavigationBarThemeData =
    BottomNavigationBarThemeData(
  backgroundColor: lightPrimaryColor,
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.black,
  selectedIconTheme: IconThemeData(
    size: bottomNavigationBarItemIconSizeSelected,
  ),
  unselectedIconTheme: IconThemeData(
    size: bottomNavigationBarItemIconSize,
  ),
  showSelectedLabels: false,
  showUnselectedLabels: false,
);

const BottomNavigationBarThemeData darkBottomNavigationBarThemeData =
    BottomNavigationBarThemeData(
  backgroundColor: darkPrimaryColor,
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.black,
  selectedIconTheme: IconThemeData(
    size: bottomNavigationBarItemIconSizeSelected,
  ),
  unselectedIconTheme: IconThemeData(
    size: bottomNavigationBarItemIconSize,
  ),
  showSelectedLabels: false,
  showUnselectedLabels: false,
);

// ---------------------------- Light Theme ----------------------------
final ThemeData lightAppTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: lightTextTheme,
  elevatedButtonTheme: lightElevatedButtonThemeData,
  bottomAppBarColor: lightPrimaryColor,
  primaryColor: lightPrimaryColor,
  bottomNavigationBarTheme: lightBottomNavigationBarThemeData,
  useMaterial3: true,
);
// ---------------------------- Dark Theme ----------------------------
final ThemeData darkAppTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: darkTextTheme,
  elevatedButtonTheme: darkElevatedButtonThemeData,
  bottomAppBarColor: darkPrimaryColor,
  primaryColor: darkPrimaryColor,
  bottomNavigationBarTheme: darkBottomNavigationBarThemeData,
  useMaterial3: true,
);
