import 'package:flutter/material.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/theme/theme_utils.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CustomBoxedProgressBar extends StatelessWidget {
  const CustomBoxedProgressBar({
    super.key,
    required this.totalSteps,
    required this.currentStep,
    required this.size,
    required this.theme,
  });

  final int totalSteps;
  final int currentStep;
  final double size;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          color: inputBorderColor,
        ),
      ),
      child: StepProgressIndicator(
        totalSteps: totalSteps,
        currentStep: currentStep,
        size: size,
        selectedColor: ThemeUtils.getThemeColor(
          theme,
          Colors.black,
          darkPrimaryColor,
        ),
        unselectedColor: Colors.white54,
      ),
    );
  }
}
