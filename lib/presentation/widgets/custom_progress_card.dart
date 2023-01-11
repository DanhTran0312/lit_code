import 'package:flutter/material.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class CustomProgressCard extends StatelessWidget {
  const CustomProgressCard({
    super.key,
    required this.theme,
    required this.title,
    required this.current,
    required this.total,
    required this.totalSteps,
    required this.size,
  });

  final ThemeData theme;
  final String title;
  final int totalSteps;
  final int current;
  final int total;
  final double size;

  @override
  Widget build(BuildContext context) {
    final currentStep = (current / total * 10).round();
    return Card(
      color: darkSecondaryColor.withOpacity(0.8),
      child: AspectRatio(
        aspectRatio: 5 / 4,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$current/$total',
                style: theme.textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                title,
                style: theme.textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: sizeBoxHeightSmall),
              CustomBoxedProgressBar(
                totalSteps: totalSteps,
                currentStep: currentStep,
                size: size,
                theme: theme,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
