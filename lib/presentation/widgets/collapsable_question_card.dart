// ignore_for_file: use_named_constants
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_completed_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_expansion_cubit.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class CollapsableQuestionCard extends StatelessWidget {
  const CollapsableQuestionCard({
    super.key,
    required this.expansionCubit,
    required this.isTranparent,
    required this.question,
    required this.questionCompletedCubit,
  });

  final Question question;
  final QuestionExpansionCubit expansionCubit;
  final bool isTranparent;
  final QuestionCompletedCubit questionCompletedCubit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return _BuildExpansionTile(
      isTranparent: isTranparent,
      theme: theme,
      expansionCubit: expansionCubit,
      question: question,
      questionCompletedCubit: questionCompletedCubit,
    );
  }
}

class _BuildExpansionTile extends StatelessWidget {
  const _BuildExpansionTile({
    required this.isTranparent,
    required this.theme,
    required this.expansionCubit,
    required this.question,
    required this.questionCompletedCubit,
  });

  final bool isTranparent;
  final ThemeData theme;
  final QuestionExpansionCubit expansionCubit;
  final Question question;
  final QuestionCompletedCubit questionCompletedCubit;

  @override
  Widget build(BuildContext context) {
    return Card(
      color:
          isTranparent ? Colors.transparent : theme.cardColor.withOpacity(0.57),
      elevation: 0,
      borderOnForeground: false,
      shape: const RoundedRectangleBorder(),
      margin: const EdgeInsets.all(0),
      clipBehavior: Clip.hardEdge,
      child: Theme(
        data: theme.copyWith(
          dividerColor: Colors.transparent,
        ),
        child: BlocBuilder<QuestionCompletedCubit, QuestionCompletedState>(
          builder: (context, state) {
            if (state is Initial) {
              questionCompletedCubit.getCompletedQuestions();
              return const CircularProgressIndicator();
            } else if (state is Loaded) {
              final completed = state.completedQuestions.contains(question);
              return ExpansionTile(
                initiallyExpanded: expansionCubit.state[question.id] ?? false,
                onExpansionChanged: (isExpanded) {
                  expansionCubit.toggleQuestion(question.id);
                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            value: completed,
                            onChanged: (bool? value) {
                              if (!completed) {
                                questionCompletedCubit
                                    .markQuestionAsCompleted(question);
                              } else {
                                questionCompletedCubit
                                    .markQuestionAsUncompleted(question);
                              }
                            },
                          ),
                          Expanded(
                            child: Text(
                              question.title,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          const SizedBox(
                            width: sizeBoxHeightSmall,
                          ),
                        ],
                      ),
                    ),
                    DifficultyChip(difficulty: question.difficulty),
                  ],
                ),
                children: [
                  const SizedBox(height: sizeBoxHeightSmall),
                  RateConfidenceWidget(
                    theme: theme,
                    question: question,
                  ),
                  const SizedBox(height: sizeBoxHeightSmall),
                ],
              );
            } else if (state is Loading) {
              return const CircularProgressIndicator();
            } else {
              return const Text('Error');
            }
          },
        ),
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
        borderRadius: BorderRadius.circular(questionCardBorder),
        color: theme.brightness == Brightness.light
            ? lightExpandedQuestionCardColor.withOpacity(0.4)
            : darkExpandedQuestionCardColor.withOpacity(0.8),
      ),
      child: Column(
        children: [
          Text('Rate your confidence', style: theme.textTheme.headline6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ConfidenceRadioButton(
                question: question,
                confidence: Confidence.low,
                onChanged: (Enum? value) {},
              ),
              ConfidenceRadioButton(
                question: question,
                confidence: Confidence.medium,
                onChanged: (Enum? value) {},
              ),
              ConfidenceRadioButton(
                question: question,
                confidence: Confidence.high,
                onChanged: (Enum? value) {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
