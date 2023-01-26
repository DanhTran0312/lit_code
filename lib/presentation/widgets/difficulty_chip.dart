import 'package:flutter/material.dart';
import 'package:lit_code/constants/enums.dart';

class DifficultyChip extends StatelessWidget {
  const DifficultyChip({
    super.key,
    required this.difficulty,
  });

  final Difficulty difficulty;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        difficulty.name,
      ),
      backgroundColor: difficulty == Difficulty.easy
          ? Colors.green
          : difficulty == Difficulty.medium
              ? Colors.orange
              : Colors.red,
    );
  }
}
