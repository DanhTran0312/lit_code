import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lit_code/constants/constants.dart';

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
  final String svgIconPath;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.amber : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(
        fit: BoxFit.cover,
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
