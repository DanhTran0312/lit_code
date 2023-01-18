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
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(
        vertical: 3,
      ),
      child: Theme(
        data: theme.copyWith(
          dividerColor: Colors.transparent,
        ),
        child: _CategorizedQuestionTile(
          category: category,
          generateCategorizedQuestionList: _generateCategorizedQuestionList,
        ),
      ),
    );
  }

  List<Widget> get _generateCategorizedQuestionList {
    return [
      ...questions.map(
        (question) => CollapsableQuestionCard(
          key: Key(question.id),
          isTranparent: true,
          question: question,
          expansionCubit: expansionCubit,
          questionCompletedCubit: questionCompletedCubit,
        ),
      ),
    ];
  }
}

class _CategorizedQuestionTile extends StatelessWidget {
  const _CategorizedQuestionTile({
    required this.category,
    required List<Widget> generateCategorizedQuestionList,
  }) : _generateCategorizedQuestionList = generateCategorizedQuestionList;

  final Category category;
  final List<Widget> _generateCategorizedQuestionList;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
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
      children: _generateCategorizedQuestionList,
    );
  }
}
