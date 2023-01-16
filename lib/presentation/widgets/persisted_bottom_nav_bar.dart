import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lit_code/business_logic/cubits/cubit/bottom_nav_bar_cubit.dart';
import 'package:lit_code/presentation/widgets/custom_bottom_navigation_bar_item.dart';
import 'package:lit_code/theme/theme_utils.dart';

class PersistedBottomNavBar extends StatelessWidget {
  const PersistedBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBarCubit(),
      child: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
        builder: (context, state) {
          return CustomBottomNavBar(
            state: state,
          );
        },
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.state,
  });

  final BottomNavBarState state;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final boxDecoration = BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(
          color: ThemeUtils.getThemeColor(
            theme,
            Colors.black.withOpacity(0.15),
            Colors.white.withOpacity(0.15),
          ),
          blurRadius: 15,
          offset: const Offset(3, 5), // changes position of shadow
        ),
      ],
    );
    final bottomNavItems = [
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
    ];
    return Padding(
      padding: const EdgeInsets.only(bottom: 37, left: 17, right: 17),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: boxDecoration,
        child: Theme(
          data: theme.copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (index) {
              if (state.selectedIndex == index) return;
              _onBottomNavBarItemTapped(context, index);
            },
            // backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            enableFeedback: true,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            items: bottomNavItems,
          ),
        ),
      ),
    );
  }
}

void _onBottomNavBarItemTapped(BuildContext context, int index) {
  BlocProvider.of<BottomNavBarCubit>(context).updateSelectedIndex(index);

  switch (index) {
    case 0:
      context.goNamed('progress');
      break;
    case 1:
      context.goNamed('study');
      break;
    case 2:
      context.goNamed('home');
      break;
    case 3:
      context.goNamed('review');
      break;
    case 4:
      context.goNamed('settings');
      break;
    default:
      context.goNamed('home');
  }
}
