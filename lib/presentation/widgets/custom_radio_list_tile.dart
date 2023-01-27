import 'package:flutter/material.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/theme/theme_utils.dart';

class CustomRadioListTile extends StatelessWidget {
  const CustomRadioListTile({
    super.key,
    required this.value,
    required this.title,
    this.trailing,
    this.leading,
    required this.groupValue,
    required this.onChanged,
  });

  final Experience value;
  final String title;
  final Widget? trailing;
  final Widget? leading;
  final Experience groupValue;
  final void Function(Experience?) onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSelected = groupValue == value;
    final cardColor = isSelected
        ? ThemeUtils.getThemeColor(theme, lightSecondaryColor, darkPrimaryColor)
        : Colors.transparent;
    final borderSide = isSelected
        ? BorderSide.none
        : BorderSide(
            color: ThemeUtils.getThemeColor(
              theme,
              lightPrimaryColor,
              darkSecondaryColor,
            ),
          );

    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: borderSide,
      ),
      color: cardColor,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => onChanged(value),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 28,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: leading ?? const SizedBox.shrink(),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: theme.textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 2,
                child: trailing ?? const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
