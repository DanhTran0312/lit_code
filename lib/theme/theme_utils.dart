import 'package:flutter/material.dart';

class ThemeUtils {
  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static bool isLight(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }

  static Color getThemeColor(
    ThemeData theme,
    Color lightColor,
    Color darkColor,
  ) {
    return theme.brightness == Brightness.dark ? darkColor : lightColor;
  }

  static String getBackgroundUrlFromTheme(
    ThemeData theme,
    String lightUrl,
    String darkUrl,
  ) {
    return theme.brightness == Brightness.dark ? darkUrl : lightUrl;
  }
}
