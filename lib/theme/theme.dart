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
  displayLarge: GoogleFonts.poppins(
    fontSize: displayLargeFontSize,
    fontWeight: FontWeight.w900,
    color: darkSecondaryColor,
  ),
  displayMedium: GoogleFonts.poppins(
    fontSize: displayMediumFontSize,
    fontWeight: FontWeight.w700,
    color: darkSecondaryColor,
  ),
  displaySmall: GoogleFonts.poppins(
    fontSize: displaySmallFontSize,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  headlineMedium: GoogleFonts.poppins(
    fontSize: headlineMediumFontSize,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  headlineSmall: GoogleFonts.poppins(
    fontSize: headlineSmallFontSize,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  titleLarge: GoogleFonts.poppins(
    fontSize: titleLargeFontSize,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  titleMedium: GoogleFonts.openSans(
    fontSize: titleMediumFontSize,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  titleSmall: GoogleFonts.openSans(
    fontSize: titleSmallFontSize,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
);

// ---------------------------- Light TextTheme ----------------------------
final TextTheme lightTextTheme = TextTheme(
  displayLarge: GoogleFonts.poppins(
    fontSize: displayLargeFontSize,
    fontWeight: FontWeight.w900,
    color: lightPrimaryColor,
  ),
  displayMedium: GoogleFonts.poppins(
    fontSize: displayMediumFontSize,
    fontWeight: FontWeight.w700,
    color: lightPrimaryColor,
  ),
  displaySmall: GoogleFonts.poppins(
    fontSize: displaySmallFontSize,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),
  headlineMedium: GoogleFonts.poppins(
    fontSize: headlineMediumFontSize,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),
  headlineSmall: GoogleFonts.poppins(
    fontSize: headlineSmallFontSize,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),
  titleLarge: GoogleFonts.poppins(
    fontSize: titleLargeFontSize,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),
  titleMedium: GoogleFonts.openSans(
    fontSize: titleMediumFontSize,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),
  titleSmall: GoogleFonts.openSans(
    fontSize: titleSmallFontSize,
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
  backgroundColor: Colors.black87,
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.white,
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
  labelStyle: lightTextTheme.titleSmall,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  side: BorderSide.none,
  backgroundColor: lightChipColor,
  padding: const EdgeInsets.symmetric(
    horizontal: chipHorizontalPadding,
    vertical: chipVerticalPadding,
  ),
);

final ChipThemeData darkChipTheme = ChipThemeData(
  labelStyle: darkTextTheme.titleSmall,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  side: BorderSide.none,
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
  primaryColor: lightPrimaryColor,
  scaffoldBackgroundColor: Colors.white,
  chipTheme: lightChipTheme,
  cardColor: lightQuestionCardColor,
  cardTheme: lightCardTheme,
  floatingActionButtonTheme: lightFloatingActionButtonThemeData,
  bottomNavigationBarTheme: lightBottomNavigationBarThemeData,
  useMaterial3: true,
  bottomAppBarTheme: const BottomAppBarTheme(color: lightPrimaryColor),
);
// ---------------------------- Dark Theme ----------------------------
final ThemeData darkAppTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: darkTextTheme,
  elevatedButtonTheme: darkElevatedButtonThemeData,
  primaryColor: darkPrimaryColor,
  chipTheme: darkChipTheme,
  cardTheme: darkCardTheme,
  scaffoldBackgroundColor: const Color(0xff121212),
  cardColor: darkQuestionCardColor,
  floatingActionButtonTheme: darkFloatingActionButtonThemeData,
  bottomNavigationBarTheme: darkBottomNavigationBarThemeData,
  useMaterial3: true,
  bottomAppBarTheme: const BottomAppBarTheme(color: darkPrimaryColor),
);
