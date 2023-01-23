import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:lit_code/business_logic/cubits/cubit/theme_cubit.dart';

class AnimatedThemeToggleSwitch extends StatelessWidget {
  const AnimatedThemeToggleSwitch({
    super.key,
    required ThemeCubit themeCubit,
  }) : _themeCubit = themeCubit;

  final ThemeCubit _themeCubit;

  @override
  Widget build(BuildContext context) {
    return AnimatedToggleSwitch<int>.size(
      current: _themeCubit.state.selectedIndex,
      values: const [
        0,
        1,
      ],
      iconOpacity: 0.2,
      animationCurve: Curves.easeInOutCubic,
      animationDuration: const Duration(milliseconds: 700),
      indicatorSize: const Size.fromWidth(40),
      iconBuilder: (value, size) {
        if (value.isEven) {
          return const Icon(Icons.wb_sunny_rounded);
        }
        return const Icon(Icons.nightlight_round);
      },
      borderWidth: 0,
      iconSize: const Size(30, 30),
      height: 42,
      borderColor: Colors.transparent,
      colorBuilder: (i) => i.isEven ? Colors.amberAccent : Colors.black,
      onChanged: (i) {
        _themeCubit.toggleTheme();
      },
    );
  }
}
