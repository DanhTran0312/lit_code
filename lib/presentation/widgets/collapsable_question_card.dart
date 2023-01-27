// ignore_for_file: use_named_constants
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/completed_question_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/confetti_cubit.dart';
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
    required this.completedQuestionCubit,
  });

  final Question question;
  final QuestionExpansionCubit expansionCubit;
  final bool isTranparent;
  final CompletedQuestionCubit completedQuestionCubit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return _BuildExpansionTile(
      isTranparent: isTranparent,
      theme: theme,
      expansionCubit: expansionCubit,
      question: question,
      completedQuestionCubit: completedQuestionCubit,
    );
  }
}

class _BuildExpansionTile extends StatelessWidget {
  const _BuildExpansionTile({
    required this.isTranparent,
    required this.theme,
    required this.expansionCubit,
    required this.question,
    required this.completedQuestionCubit,
  });

  final bool isTranparent;
  final ThemeData theme;
  final QuestionExpansionCubit expansionCubit;
  final Question question;
  final CompletedQuestionCubit completedQuestionCubit;

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
        child: BlocBuilder<StatisticsBloc, StatisticsState>(
          builder: (context, stateQuestion) {
            return _QuestionExpansionTile(
              expansionCubit: expansionCubit,
              question:
                  stateQuestion.completedQuestions[question.id] ?? question,
              completedQuestionCubit: completedQuestionCubit,
              statisticsBloc: BlocProvider.of<StatisticsBloc>(context),
              isSelected: stateQuestion.completedQuestions[question.id] != null,
              theme: theme,
            );
          },
        ),
      ),
    );
  }
}

class _QuestionExpansionTile extends StatelessWidget {
  const _QuestionExpansionTile({
    required this.expansionCubit,
    required this.question,
    required this.completedQuestionCubit,
    required this.theme,
    required this.isSelected,
    required this.statisticsBloc,
  });

  final QuestionExpansionCubit expansionCubit;
  final Question question;
  final CompletedQuestionCubit completedQuestionCubit;
  final ThemeData theme;
  final bool isSelected;
  final StatisticsBloc statisticsBloc;

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
                  completedQuestionCubit: completedQuestionCubit,
                  statisticsBloc: statisticsBloc,
                  isSelected: isSelected,
                  question: question,
                ),
                Expanded(
                  child: Text(
                    question.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const SizedBox(
                  width: sizeBoxSmall,
                ),
              ],
            ),
          ),
          DifficultyChip(difficulty: question.difficulty),
        ],
      ),
      children: [
        const SizedBox(height: sizeBoxSmall),
        _RateConfidenceWidget(
          theme: theme,
          question: question,
          completedQuestionCubit: completedQuestionCubit,
        ),
        const SizedBox(height: sizeBoxSmall),
      ],
    );
  }
}

class _CheckBox extends StatelessWidget {
  const _CheckBox({
    required this.completedQuestionCubit,
    required this.question,
    required this.isSelected,
    required this.statisticsBloc,
  });

  final CompletedQuestionCubit completedQuestionCubit;
  final Question question;
  final bool isSelected;
  final StatisticsBloc statisticsBloc;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      key: key,
      value: isSelected,
      onChanged: (bool? value) {
        if (!isSelected) {
          completedQuestionCubit.markQuestionAsCompleted(question);
          BlocProvider.of<ConfettiCubit>(context).startConfetti();
        } else {
          completedQuestionCubit.markQuestionAsUncompleted(question);
        }
      },
    );
  }
}

class _RateConfidenceWidget extends StatelessWidget {
  const _RateConfidenceWidget({
    required this.theme,
    required this.question,
    required CompletedQuestionCubit completedQuestionCubit,
  }) : _completedQuestionCubit = completedQuestionCubit;

  final ThemeData theme;
  final Question question;
  final CompletedQuestionCubit _completedQuestionCubit;

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
          Text('Rate your confidence', style: theme.textTheme.titleLarge),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ConfidenceRadioButton(
                question: question,
                confidence: Confidence.low,
                onChanged: (Enum? value) {
                  _completedQuestionCubit.onQuestionConfidenceChanged(
                    question,
                    Confidence.low,
                  );
                },
              ),
              ConfidenceRadioButton(
                question: question,
                confidence: Confidence.medium,
                onChanged: (Enum? value) {
                  _completedQuestionCubit.onQuestionConfidenceChanged(
                    question,
                    Confidence.medium,
                  );
                },
              ),
              ConfidenceRadioButton(
                question: question,
                confidence: Confidence.high,
                onChanged: (Enum? value) {
                  _completedQuestionCubit.onQuestionConfidenceChanged(
                    question,
                    Confidence.high,
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
