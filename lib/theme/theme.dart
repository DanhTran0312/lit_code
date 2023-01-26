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

// ---------------------------- Light FloatingActionButtonTheme ----------------------------

final FloatingActionButtonThemeData lightFloatingActionButtonThemeData =
    FloatingActionButtonThemeData(
  backgroundColor: lightPrimaryColor,
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);

// ---------------------------- Dark FloatingActionButtonTheme ----------------------------
final FloatingActionButtonThemeData darkFloatingActionButtonThemeData =
    FloatingActionButtonThemeData(
  backgroundColor: darkPrimaryColor,
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18),
  ),
);

// ---------------------------- Dark TextTheme ----------------------------
final TextTheme darkTextTheme = TextTheme(
  headline1: GoogleFonts.poppins(
    fontSize: headline1Size,
    fontWeight: FontWeight.w900,
    color: darkSecondaryColor,
  ),
  headline2: GoogleFonts.poppins(
    fontSize: headline2Size,
    fontWeight: FontWeight.w700,
    color: darkSecondaryColor,
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
  headline5: GoogleFonts.poppins(
    fontSize: headline5Size,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),
  headline6: GoogleFonts.poppins(
    fontSize: headline6Size,
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

// ---------------------------- BottomNavigationBarThemeData ----------------------------

const BottomNavigationBarThemeData lightBottomNavigationBarThemeData =
    BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
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
  elevation: 1,
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
  elevation: 1,
);

// ---------------------------- Chip Theme ----------------------------
final ChipThemeData lightChipTheme = ChipThemeData(
  labelStyle: lightTextTheme.subtitle2,
  backgroundColor: lightChipColor,
  padding: const EdgeInsets.symmetric(
    horizontal: chipHorizontalPadding,
    vertical: chipVerticalPadding,
  ),
);

final ChipThemeData darkChipTheme = ChipThemeData(
  labelStyle: darkTextTheme.subtitle2,
  backgroundColor: Colors.pinkAccent,
  padding: const EdgeInsets.symmetric(
    horizontal: chipHorizontalPadding,
    vertical: chipVerticalPadding,
  ),
);

// ---------------------------- Card ----------------------------
const CardTheme lightCardTheme = CardTheme(
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(questionCardBorder),
    ),
  ),
);

const CardTheme darkCardTheme = CardTheme(
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(questionCardBorder),
    ),
  ),
);

// ---------------------------- Light Theme ----------------------------
final ThemeData lightAppTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: lightTextTheme,
  elevatedButtonTheme: lightElevatedButtonThemeData,
  bottomAppBarColor: lightPrimaryColor,
  primaryColor: lightPrimaryColor,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  chipTheme: lightChipTheme,
  cardColor: lightQuestionCardColor,
  cardTheme: lightCardTheme,
  floatingActionButtonTheme: lightFloatingActionButtonThemeData,
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
  backgroundColor: Colors.black,
  chipTheme: darkChipTheme,
  cardTheme: darkCardTheme,
  scaffoldBackgroundColor: const Color(0xff121212),
  cardColor: darkQuestionCardColor,
  floatingActionButtonTheme: darkFloatingActionButtonThemeData,
  bottomNavigationBarTheme: darkBottomNavigationBarThemeData,
  useMaterial3: true,
);
