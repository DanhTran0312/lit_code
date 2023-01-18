// ignore_for_file: use_named_constants
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_completed_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_expansion_cubit.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';
import 'package:lit_code/theme/theme_utils.dart';

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
      shape: const RoundedRectangleBorder(),
      margin: const EdgeInsets.all(0),
      clipBehavior: Clip.hardEdge,
      child: Theme(
        data: theme.copyWith(
          dividerColor: Colors.transparent,
        ),
        child: BlocListener<QuestionCompletedCubit, QuestionCompletedState>(
          listener: (context, state) {
            if (state is Error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
          child: BlocSelector<QuestionCompletedCubit, QuestionCompletedState,
              bool>(
            selector: (state) {
              if (state is Loaded) {
                return state.completedQuestions.containsKey(question.id);
              } else {
                return false;
              }
            },
            bloc: questionCompletedCubit,
            builder: (context, isSelected) {
              return _ExpansionQuestionTile(
                expansionCubit: expansionCubit,
                question: question,
                questionCompletedCubit: questionCompletedCubit,
                isSelected: isSelected,
                theme: theme,
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ExpansionQuestionTile extends StatelessWidget {
  const _ExpansionQuestionTile({
    required this.expansionCubit,
    required this.question,
    required this.questionCompletedCubit,
    required this.theme,
    required this.isSelected,
  });

  final QuestionExpansionCubit expansionCubit;
  final Question question;
  final QuestionCompletedCubit questionCompletedCubit;
  final ThemeData theme;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
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
                _CheckBox(
                  questionCompletedCubit: questionCompletedCubit,
                  isSelected: isSelected,
                  question: question,
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
        _RateConfidenceWidget(
          theme: theme,
          question: question,
        ),
        const SizedBox(height: sizeBoxHeightSmall),
      ],
    );
  }
}

class _CheckBox extends StatelessWidget {
  const _CheckBox({
    required this.questionCompletedCubit,
    required this.question,
    required this.isSelected,
  });

  final QuestionCompletedCubit questionCompletedCubit;
  final Question question;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      key: key,
      value: isSelected,
      onChanged: (bool? value) {
        if (!isSelected) {
          questionCompletedCubit.markQuestionAsCompleted(question);
        } else {
          questionCompletedCubit.markQuestionAsUncompleted(question);
        }
      },
    );
  }
}

class _RateConfidenceWidget extends StatelessWidget {
  const _RateConfidenceWidget({
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
        color: ThemeUtils.getThemeColor(
          theme,
          lightExpandedQuestionCardColor.withOpacity(0.4),
          darkExpandedQuestionCardColor.withOpacity(0.8),
        ),
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
