import 'package:flutter/material.dart';
import 'package:lit_code/constants/constant.dart';

final ThemeData lightAppTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: color1,
  primaryColorDark: color2,
  primaryColorLight: color3,
  scaffoldBackgroundColor: color5,
  cardColor: color6,
  canvasColor: color4,
  backgroundColor: color8,
  toggleableActiveColor: color10,
  fontFamily: 'Roboto',
  textTheme: const TextTheme(
    headline1:
        TextStyle(fontSize: 72, fontWeight: FontWeight.bold, color: color1),
    headline2:
        TextStyle(fontSize: 36, fontStyle: FontStyle.italic, color: color2),
    bodyText1: TextStyle(fontSize: 14, fontFamily: 'Hind', color: color3),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: color9,
    textTheme: ButtonTextTheme.primary,
  ),
  iconTheme: const IconThemeData(
    color: color10,
    size: 32,
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(fontSize: 14, color: color2),
    hintStyle: const TextStyle(fontSize: 14, color: color3),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: color4),
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: color1,
    unselectedLabelColor: color3,
  ),
  bottomAppBarColor: color5,
  dividerColor: color4,
  popupMenuTheme: PopupMenuThemeData(
    color: color6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: color7,
    disabledColor: color8,
    selectedColor: color9,
    secondarySelectedColor: color10,
    labelPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
    labelStyle: TextStyle(fontSize: 12, color: color1),
    secondaryLabelStyle: TextStyle(fontSize: 10, color: color2),
  ),
  dialogTheme: DialogTheme(
    backgroundColor: color5,
    titleTextStyle: const TextStyle(fontSize: 20, color: color1),
    contentTextStyle: const TextStyle(fontSize: 14, color: color3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: color9,
    foregroundColor: color1,
  ),
);

final ThemeData darkAppTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
  ),
);
