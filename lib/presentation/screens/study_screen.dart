// ignore_for_file: lines_longer_than_80_chars

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/question_list_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/completed_question_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/confetti_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_expansion_cubit.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/question.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';
import 'package:lit_code/theme/theme_utils.dart';

class StudyScreen extends StatelessWidget {
  const StudyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final confettiCubit = BlocProvider.of<ConfettiCubit>(context);
    return Scaffold(
      body: BlocConsumer<QuestionListBloc, QuestionListState>(
        listener: (context, state) {
          if (state is QuestionListError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          } else if (state is QuestionListLoading) {
            // If the state is QuestionListLoading, then show a circular progress indicator.
            const CircularProgressIndicator();
          }
        },
        builder: (context, state) {
          if (state is QuestionListInitial) {
            // If the state is QuestionListInitial, then fetch the questions.
            BlocProvider.of<QuestionListBloc>(context).add(
              const FetchQuestions(),
            );
            return const Center(child: CircularProgressIndicator());
          } else if (state is QuestionListLoaded) {
            // If the state is QuestionListLoaded, then show the list of questions.
            final stateQuestion = state.questions;
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPageHorizontalPadding,
              ),
              child: Stack(
                children: [
                  _StudyScreenBody(
                    stateQuestion: stateQuestion,
                    theme: theme,
                  ),
                  BlocBuilder<ConfettiCubit, ConfettiState>(
                    builder: (context, state) {
                      return _ConfettiBuilder(confettiCubit: confettiCubit);
                    },
                  )
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class _ConfettiBuilder extends StatelessWidget {
  const _ConfettiBuilder({
    required this.confettiCubit,
  });

  final ConfettiCubit confettiCubit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: CustomConfetti(
            key: const Key('confetti1'),
            confettiController: confettiCubit.confettiController,
            blastDirection: -pi / 2.3,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CustomConfetti(
            key: const Key('confetti2'),
            blastDirection: -pi / 1.77,
            confettiController: confettiCubit.confettiController,
          ),
        )
      ],
    );
  }
}

class _StudyScreenBody extends StatelessWidget {
  const _StudyScreenBody({
    required this.stateQuestion,
    required this.theme,
  });

  final List<Question> stateQuestion;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: sizeBoxHeightSmall),
        const SectionHeading(title: 'Your Progress:'),
        const SizedBox(height: sizeBoxHeightSmall),
        BlocBuilder<StatisticsBloc, StatisticsState>(
          builder: (context, state) {
            final completedQuestion = state.completedQuestions;
            return _ProgressSection(
              completedQuestions: completedQuestion,
              total: state.totalQuestions.length,
              theme: theme,
            );
          },
        ),
        const SectionHeading(title: 'Categories'),
        const SizedBox(height: sizeBoxHeightSmall),
        _CategoryList(
          stateQuestion: stateQuestion,
          completedQuestions:
              BlocProvider.of<StatisticsBloc>(context).state.completedQuestions,
          completedQuestionCubit:
              BlocProvider.of<CompletedQuestionCubit>(context),
        ),
      ],
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({
    required List<Question> stateQuestion,
    required Map<String, Question> completedQuestions,
    required CompletedQuestionCubit completedQuestionCubit,
  })  : _stateQuestion = stateQuestion,
        _completedQuestionCubit = completedQuestionCubit,
        _completedQuestions = completedQuestions;

  final List<Question> _stateQuestion;
  final Map<String, Question> _completedQuestions;
  final CompletedQuestionCubit _completedQuestionCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionExpansionCubit(),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          final category = categoryList[index];
          final questions = _stateQuestion
              .where((question) => question.category == category)
              .toList();
          return CategorizedQuestionListCard(
            category: category,
            questions: questions,
            expansionCubit: BlocProvider.of<QuestionExpansionCubit>(
              context,
            ),
            completedQuestions: _completedQuestions,
            completedQuestionCubit: _completedQuestionCubit,
          );
        },
      ),
    );
  }
}

class _ProgressSection extends StatelessWidget {
  const _ProgressSection({
    required this.completedQuestions,
    required this.theme,
    required this.total,
  });

  final Map<String, Question> completedQuestions;
  final int total;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final completed = completedQuestions.length;
    late final int easy;
    late final int medium;
    late final int hard;
    if (completed == 0) {
      easy = 0;
      medium = 0;
      hard = 0;
    } else {
      easy = completedQuestions.values
          .where(
            (question) => question.difficulty == Difficulty.easy,
          )
          .length;
      medium = completedQuestions.values
          .where(
            (question) => question.difficulty == Difficulty.medium,
          )
          .length;
      hard = completedQuestions.values
          .where(
            (question) => question.difficulty == Difficulty.hard,
          )
          .length;
    }

    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: PieChartProgress(
              easy: easy.toDouble(),
              medium: medium.toDouble(),
              hard: hard.toDouble(),
            ),
          ),
        ),
        Expanded(
          child: Card(
            color: ThemeUtils.getThemeColor(
              theme,
              lightProgressCardColor.withOpacity(0.57),
              darkSecondaryColor.withOpacity(0.5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              child: ProgressCard(
                theme: theme,
                completed: completed,
                total: total,
                easy: easy,
                medium: medium,
                hard: hard,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
