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
    required this.roundedEdges,
  });

  final int totalSteps;
  final int currentStep;
  final double size;
  final ThemeData theme;
  final bool roundedEdges;

  @override
  Widget build(BuildContext context) {
    final roundEdgesBorderRadius = roundedEdges ? 10.0 : 0.0;
    return Container(
      padding: const EdgeInsets.all(2.4),
      decoration: BoxDecoration(
        border: Border.all(
          color: darkPrimaryColor,
        ),
        borderRadius: BorderRadius.circular(roundEdgesBorderRadius),
      ),
      child: StepProgressIndicator(
        roundedEdges: Radius.circular(roundEdgesBorderRadius),
        totalSteps: totalSteps,
        currentStep: currentStep,
        size: size,
        selectedColor: darkPrimaryColor,
        unselectedColor: ThemeUtils.getThemeColor(
          theme,
          Colors.pink.shade100,
          Colors.white,
        ),
      ),
    );
  }
}
