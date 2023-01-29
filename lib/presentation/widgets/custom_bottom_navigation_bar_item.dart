import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/theme/theme_utils.dart';

class CustomBottomNavigationBarItem extends BottomNavigationBarItem {
  CustomBottomNavigationBarItem({
    required String svgIconPath,
    required bool isSelected,
  }) : super(
          label: '',
          icon: CustomBottomNavBarIcon(
            svgIconPath: svgIconPath,
            isSelected: isSelected,
          ),
          activeIcon: null,
        );
}

class CustomBottomNavBarIcon extends StatelessWidget {
  const CustomBottomNavBarIcon({
    super.key,
    required this.svgIconPath,
    required this.isSelected,
  });

  final bool isSelected;
  final String svgIconPath;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 22),
      decoration: BoxDecoration(
        color: isSelected
            ? ThemeUtils.getThemeColor(
                theme,
                lightPrimaryColor.withOpacity(0.65),
                darkPrimaryColor.withOpacity(0.9),
              )
            : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        svgIconPath,
        height: isSelected
            ? bottomNavigationBarItemIconSizeSelected
            : bottomNavigationBarItemIconSize,
        width: isSelected
            ? bottomNavigationBarItemIconSizeSelected
            : bottomNavigationBarItemIconSize,
        color: isSelected
            ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
            : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      ),
    );
  }
}
