import 'package:flutter/material.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/constants/enums.dart';

class DifficultyChip extends StatelessWidget {
  const DifficultyChip({
    super.key,
    required this.difficulty,
  });

  final Difficulty difficulty;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: difficultyChipHorizontalPadding,
        vertical: difficultyChipVerticalPadding,
      ),
      decoration: BoxDecoration(
        color: difficulty == Difficulty.easy
            ? difficultyChipColorEasy
            : difficulty == Difficulty.medium
                ? difficultyChipColorMedium
                : difficultyChipColorHard,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        difficulty.toString().split('.').last,
        style: theme.textTheme.subtitle2,
      ),
    );
  }
}
