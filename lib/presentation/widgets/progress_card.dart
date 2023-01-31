import 'package:flutter/material.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';
import 'package:lit_code/theme/theme_utils.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({
    super.key,
    required this.theme,
    required this.total,
    required this.completed,
    required this.easy,
    required this.medium,
    required this.hard,
  });

  final int completed;
  final int easy;
  final int hard;
  final int medium;
  final ThemeData theme;
  final int total;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Column(
        children: [
          Text('Total:', style: theme.textTheme.headlineSmall),
          Text(
            '$completed/$total',
            style: theme.textTheme.headlineMedium,
          ),
          QuestionAndDifficulty(
            difficulty: Difficulty.easy,
            questionCount: easy,
          ),
          QuestionAndDifficulty(
            difficulty: Difficulty.medium,
            questionCount: medium,
          ),
          QuestionAndDifficulty(
            difficulty: Difficulty.hard,
            questionCount: hard,
          ),
        ],
      ),
    );
  }
}

class QuestionAndDifficulty extends StatelessWidget {
  const QuestionAndDifficulty({
    super.key,
    required this.difficulty,
    required this.questionCount,
  });

  final Difficulty difficulty;
  final int questionCount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Chip(
          label: Text(questionCount.toString()),
          backgroundColor: ThemeUtils.getThemeColor(
            theme,
            lightChipColor,
            Colors.pinkAccent,
          ),
        ),
        DifficultyChip(
          difficulty: difficulty,
        ),
      ],
    );
  }
}
