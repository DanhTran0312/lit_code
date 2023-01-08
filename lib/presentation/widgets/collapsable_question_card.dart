import 'package:flutter/material.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class CollapsableQuestionCard extends StatelessWidget {
  const CollapsableQuestionCard({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: questionCardColor,
      clipBehavior: Clip.hardEdge,
      child: ExpansionTile(
        childrenPadding: const EdgeInsets.symmetric(
          horizontal: expansionTileHorizontalPadding,
          vertical: expansionTileVerticalPadding,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                question.title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            DifficultyChip(difficulty: question.difficulty),
          ],
        ),
        children: [RateConfidenceWidget(theme: theme, question: question)],
      ),
    );
  }
}

class RateConfidenceWidget extends StatelessWidget {
  const RateConfidenceWidget({
    super.key,
    required this.theme,
    required this.question,
  });

  final ThemeData theme;
  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(questionCardBorderRadius),
        color: expandedQuestionCardColor,
      ),
      child: Column(
        children: [
          Text('Rate your confidence', style: theme.textTheme.headline6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextRadioButton(
                question: question,
                label: 'Low',
                value: Confidence.low,
                onChanged: (Enum? value) {},
              ),
              TextRadioButton(
                question: question,
                label: 'Medium',
                value: Confidence.medium,
                onChanged: (Enum? value) {},
              ),
              TextRadioButton(
                question: question,
                label: 'High',
                value: Confidence.high,
                onChanged: (Enum? value) {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
