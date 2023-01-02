import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/bottom_nav_bar_cubit.dart';
import 'package:lit_code/presentation/widgets/custom_bottom_navigation_bar_item.dart';

class PersistedBottomNavBar extends StatelessWidget {
  const PersistedBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 37, left: 17, right: 17),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(2, 2), // changes position of shadow
                ),
              ],
            ),
            child: BottomNavigationBar(
              currentIndex: state.selectedIndex,
              onTap: (index) {
                _onBottomNavBarItemTapped(context, index);
              },
              // backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              enableFeedback: true,
              selectedFontSize: 0,
              items: [
                CustomBottomNavigationBarItem(
                  svgIconPath: 'assets/svg/progress.svg',
                  isSelected: state.selectedIndex == 0,
                ),
                CustomBottomNavigationBarItem(
                  svgIconPath: 'assets/svg/study.svg',
                  isSelected: state.selectedIndex == 1,
                ),
                CustomBottomNavigationBarItem(
                  svgIconPath: 'assets/svg/fire_home.svg',
                  isSelected: state.selectedIndex == 2,
                ),
                CustomBottomNavigationBarItem(
                  svgIconPath: 'assets/svg/review.svg',
                  isSelected: state.selectedIndex == 3,
                ),
                CustomBottomNavigationBarItem(
                  svgIconPath: 'assets/svg/settings.svg',
                  isSelected: state.selectedIndex == 4,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

void _onBottomNavBarItemTapped(BuildContext context, int index) {
  BlocProvider.of<BottomNavBarCubit>(context).updateSelectedIndex(index);

  switch (index) {
    case 0:
      Navigator.of(context).pushReplacementNamed('/progress');
      break;
    case 1:
      Navigator.of(context).pushReplacementNamed('/study');
      break;
    case 2:
      Navigator.of(context).pushReplacementNamed('/home');
      break;
    case 3:
      Navigator.of(context).pushReplacementNamed('/review');
      break;
    case 4:
      Navigator.of(context).pushReplacementNamed('/settings');
      break;
  }
}
