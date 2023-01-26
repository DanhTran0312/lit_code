import 'package:flutter/material.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/theme/theme_utils.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.color,
    this.fontSize,
  });

  final String title;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      title,
      style: theme.textTheme.headline4!.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: fontSize ?? theme.textTheme.headline4!.fontSize,
        color: color ??
            ThemeUtils.getThemeColor(
              theme,
              lightPrimaryColor,
              darkSecondaryColor,
            ),
      ),
    );
  }
}
