import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lit_code/business_logic/cubits/cubit/completion_toggle_cubit.dart';
import 'package:lit_code/constants/constant.dart';

class AnimatedComplettionToggleSwitch extends StatelessWidget {
  const AnimatedComplettionToggleSwitch({
    super.key,
    required CompletionToggleCubit completionToggleCubit,
  }) : _completionToggleCubit = completionToggleCubit;

  final CompletionToggleCubit _completionToggleCubit;

  @override
  Widget build(BuildContext context) {
    return AnimatedToggleSwitch<int>.size(
      current: _completionToggleCubit.state,
      values: const [
        0,
        1,
      ],
      iconOpacity: 0.1,
      animationCurve: Curves.easeInOutCubic,
      animationDuration: const Duration(milliseconds: 700),
      indicatorSize: const Size(60, 42),
      selectedIconSize: const Size(15, 15),
      iconSize: const Size(15, 15),
      indicatorBorderRadius: BorderRadius.circular(0),
      iconBuilder: (value, size) {
        return SvgPicture.asset(
          value.isOdd ? 'assets/svg/completed.svg' : 'assets/svg/todo.svg',
          width: size.width,
          height: size.height,
        );
      },
      height: 42,
      borderRadius: BorderRadius.circular(18),
      borderWidth: 1.2,
      borderColor: inputBorderColor,
      colorBuilder: (i) => i.isOdd ? Colors.amberAccent : Colors.deepOrange,
      onChanged: (i) {
        _completionToggleCubit.toggle();
      },
    );
  }
}
