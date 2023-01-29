import 'package:flutter/material.dart';
import 'package:lit_code/business_logic/cubits/cubit/completed_question_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_expansion_cubit.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/question.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class CategorizedQuestionListCard extends StatelessWidget {
  const CategorizedQuestionListCard({
    super.key,
    required List<Question> questions,
    required Category category,
    required QuestionExpansionCubit expansionCubit,
    required CompletedQuestionCubit completedQuestionCubit,
    required Map<String, Question> completedQuestions,
  })  : _questions = questions,
        _category = category,
        _expansionCubit = expansionCubit,
        _completedQuestions = completedQuestions,
        _completedQuestionCubit = completedQuestionCubit;

  final Category _category;
  final CompletedQuestionCubit _completedQuestionCubit;
  final Map<String, Question> _completedQuestions;
  final QuestionExpansionCubit _expansionCubit;
  final List<Question> _questions;

  List<Widget> get _generateCategorizedQuestionList {
    return [
      ..._questions.map((question) {
        return CollapsableQuestionCard(
          key: Key(question.id),
          isTranparent: true,
          question: _completedQuestions.containsKey(question.id)
              ? _completedQuestions[question.id]!
              : question,
          expansionCubit: _expansionCubit,
          completedQuestionCubit: _completedQuestionCubit,
        );
      }),
    ];
  }

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
          category: _category,
          generateCategorizedQuestionList: _generateCategorizedQuestionList,
        ),
      ),
    );
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
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ],
      ),
      children: _generateCategorizedQuestionList,
    );
  }
}
