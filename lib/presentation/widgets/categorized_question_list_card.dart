import 'package:flutter/material.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_completed_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_expansion_cubit.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/question.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class CategorizedQuestionListCard extends StatelessWidget {
  const CategorizedQuestionListCard({
    super.key,
    required this.category,
    required this.questions,
    required this.expansionCubit,
    required this.questionCompletedCubit,
  });

  final List<Question> questions;
  final Category category;
  final QuestionExpansionCubit expansionCubit;
  final QuestionCompletedCubit questionCompletedCubit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: theme.cardColor.withOpacity(0.57),
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(
        vertical: 3,
      ),
      child: Theme(
        data: theme.copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          key: key,
          childrenPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  category.name,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ],
          ),
          children: [
            ...questions.map(
              (question) => CollapsableQuestionCard(
                isTranparent: true,
                question: question,
                expansionCubit: expansionCubit,
                questionCompletedCubit: questionCompletedCubit,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
