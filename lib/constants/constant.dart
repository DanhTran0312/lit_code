import 'package:flutter/material.dart';
import 'package:lit_code/constants/enums.dart';

// ---- dark ----
const Color darkSecondaryColor = Color(0xffdd3d4e);
const Color darkPrimaryColor = Color(0xfff5873b);
const Color darkCircularProgressBarTrackColor = Color(0xffef3a5d);
const Color darkCircularProgressBarColor = Color(0xfffa9151);
const Color darkQuestionCardColor = Color(0xff181818);
const Color darkExpandedQuestionCardColor = darkSecondaryColor;
const Color darkCalendarBackgroundColor = Color(0xff202020);

// ---- light ----
const Color lightPrimaryColor = Color(0xffa825cc);
const Color lightSecondaryColor = Color(0xffffdecf);
const Color lightCircularProgressBarTrackColor = Color(0xffffd8c9);
const Color lightCircularProgressBarColor = darkPrimaryColor;
const Color lightExpandedQuestionCardColor = lightPrimaryColor;
const Color lightQuestionCardColor = lightSecondaryColor;
const Color lightProgressCardColor = Color(0xffa16ce6);
const Color lightChipColor = Color(0xffba9df2);

// ---- others ----
const Color difficultyChipColorEasy = Colors.green;
const Color difficultyChipColorMedium = Colors.orange;
const Color difficultyChipColorHard = Colors.red;
const Color inputBorderColor = Color(0xffe3c7a1);

// Border
const double inputBorderWidth = 2;
const double inputBorderRadius = 30;
const double questionCardBorder = 18;

// Size
const double sizeBoxExtraSmall = 3;
const double sizeBoxSmall = 7;
const double sizeBoxMedium = 17;
const double sizeBoxLarge = 22;
const double sizeBoxExtraLarge = 40;
const double bottomNavigationBarItemIconSize = 27;
const double bottomNavigationBarItemIconSizeSelected = 35;
const double illustratedAnimationSize = 80;

// ------------------- Padding  -------------------
const double elevatedButtonVerticalPadding = 12;
const double elevatedButtonHorizontalPadding = 20;
const double inputVerticalPadding = 17;
const double inputHorizontalPadding = 20;
const double difficultyChipVerticalPadding = 5;
const double difficultyChipHorizontalPadding = 10;
const double expansionTileVerticalPadding = 15;
const double expansionTileHorizontalPadding = 18;
const double defaultPageHorizontalPadding = 18;
const double defaultPageVerticalPadding = 20;
const double chipHorizontalPadding = 10;
const double chipVerticalPadding = 2;

// ------------------- Fonts Size -------------------
const double displayLargeFontSize = 50;
const double displayMediumFontSize = 40;
const double displaySmallFontSize = 26;
const double headlineMediumFontSize = 23;
const double headlineSmallFontSize = 18;
const double titleLargeFontSize = 15;
const double titleMediumFontSize = 18;
const double titleSmallFontSize = 14;
const double elevatedButtonTextSize = 24;
const double inputTextSize = 17;

// ------------------- List -------------------
const List<Category> categoryList = Category.values;

// ------------------- Map ---------------------
const Map<int, Color> heatMapColorSet = {
  1: Color.fromARGB(20, 2, 179, 8),
  2: Color.fromARGB(40, 2, 179, 8),
  3: Color.fromARGB(60, 2, 179, 8),
  4: Color.fromARGB(80, 2, 179, 8),
  5: Color.fromARGB(100, 2, 179, 8),
  6: Color.fromARGB(120, 2, 179, 8),
  7: Color.fromARGB(150, 2, 179, 8),
  8: Color.fromARGB(180, 2, 179, 8),
  9: Color.fromARGB(220, 2, 179, 8),
  10: Color.fromARGB(255, 2, 179, 8),
};

final Map<double, List<Category>> categoryPriorityMap = {
  0.4: [Category.arrayAndHashing],
  0.55: [Category.twoPointers, Category.stack],
  0.65: [Category.binarySearch, Category.slidingWindow, Category.linkedList],
  0.70: [Category.trees],
  0.75: [Category.tries, Category.backtracking],
  0.85: [
    Category.graphs,
    Category.dynamicProgramming,
    Category.heapAndPriorityQueue
  ],
  0.97: [
    Category.bitManipulation,
    Category.intervals,
    Category.greedy,
    Category.advancedGraphs,
    Category.advancedDynamicProgramming
  ],
  1.0: [Category.mathAndGeometry],
};
