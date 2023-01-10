import 'package:flutter/material.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

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

  final ThemeData theme;
  final int total;
  final int completed;
  final int easy;
  final int medium;
  final int hard;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Column(
        children: [
          Text('Total:', style: theme.textTheme.headline5),
          Text(
            '$completed/$total',
            style: theme.textTheme.headline4,
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Chip(
          label: Text(questionCount.toString()),
        ),
        DifficultyChip(
          difficulty: difficulty,
        ),
      ],
    );
  }
}
