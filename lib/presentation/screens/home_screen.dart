// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/completed_question_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/completion_toggle_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/confetti_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_expansion_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/theme_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/today_question_cubit.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/data/repositories/repositories.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final confettiCubit = context.read<ConfettiCubit>();
    final completedQuestionCubit = CompletedQuestionCubit(
      userRepository: context.read<UserRepository>(),
      statisticsBloc: context.read<StatisticsBloc>(),
      confettiCubit: confettiCubit,
    );
    final todayQuestionCubit = TodayQuestionCubit(
      userRepository: context.read<UserRepository>(),
      questionRecommendationRepository:
          context.read<QuestionRecommendationRepository>(),
    );
    final completionToggleCubit = CompletionToggleCubit();
    final questionExpansionCubit = QuestionExpansionCubit();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => completedQuestionCubit,
        ),
        BlocProvider(
          create: (context) => todayQuestionCubit..fetchTodayQuestion(),
        ),
        BlocProvider(
          create: (context) => completionToggleCubit,
        ),
        BlocProvider(
          create: (context) => questionExpansionCubit,
        ),
      ],
      child: Scaffold(
        body: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return ImageContainer(
              size: size,
              darkBackgroundImage: 'assets/images/dark_home_background.png',
              lightBackgroundImage: 'assets/images/light_home_background.png',
              theme: theme,
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPageHorizontalPadding,
              ),
              child: Stack(
                children: [
                  _HomeScreenContent(
                    theme: theme,
                    size: size,
                    completedQuestionCubit: completedQuestionCubit,
                    todayQuestionCubit: todayQuestionCubit,
                  ),
                  BlocBuilder<ConfettiCubit, ConfettiState>(
                    bloc: confettiCubit,
                    builder: (context, state) {
                      return ConfettiBuilder(
                        confettiCubit: confettiCubit,
                      );
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _HomeScreenContent extends StatelessWidget {
  const _HomeScreenContent({
    required this.theme,
    required this.size,
    required CompletedQuestionCubit completedQuestionCubit,
    required TodayQuestionCubit todayQuestionCubit,
  })  : _todayQuestionCubit = todayQuestionCubit,
        _completedQuestionCubit = completedQuestionCubit;

  final Size size;
  final ThemeData theme;

  final CompletedQuestionCubit _completedQuestionCubit;
  final TodayQuestionCubit _todayQuestionCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        var name = '';
        var url = '';
        const dummyCompletedQuestion = 14;
        if (state is Authenticated) {
          name = state.user.name!;
          url = state.user.photoUrl!;
        }
        final welcomeTextStyle = theme.textTheme.headlineMedium!
            .copyWith(fontWeight: FontWeight.w600);

        return ListView(
          shrinkWrap: true,
          children: [
            CustomAppBar(url: url, theme: theme),
            const SizedBox(height: sizeBoxSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<TodayQuestionCubit, TodayQuestionState>(
                  builder: (context, state) {
                    if (state is TodayQuestionLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is TodayQuestionLoaded) {
                      final todayQuestions = state.questions;
                      return RichText(
                        text: TextSpan(
                          text: 'Hi ${name.split(' ').first}',
                          style: welcomeTextStyle,
                          children: [
                            TextSpan(
                              text: ', Today you have ',
                              style: welcomeTextStyle,
                            ),
                            TextSpan(
                              text: '${todayQuestions.length} questions',
                              style: welcomeTextStyle.copyWith(
                                fontWeight: FontWeight.w800,
                                color: theme.primaryColor,
                              ),
                            ),
                            TextSpan(
                              text: ' to complete 🔥',
                              style: welcomeTextStyle,
                            ),
                          ],
                        ),
                      );
                    } else {
                      return const Text('Something went wrong');
                    }
                  },
                ),
                const SizedBox(height: sizeBoxSmall),
                Align(
                  child: Column(
                    children: [
                      CustomCirCularProgressBar(
                        size: size.width * 0.37,
                        initialValue: 14,
                        total: 20,
                        theme: theme,
                      ),
                      const SizedBox(height: sizeBoxSmall),
                      RichText(
                        text: TextSpan(
                          text: dummyCompletedQuestion.toString(),
                          style: welcomeTextStyle.copyWith(
                            fontWeight: FontWeight.w800,
                            color: theme.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: '/',
                              style: welcomeTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Questions',
                        style: welcomeTextStyle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: sizeBoxSmall),
                _ProgressCardsRow(theme: theme),
                const SizedBox(height: sizeBoxMedium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SectionHeading(title: 'Today'),
                    // BlocBuilder<CompletionToggleCubit, int>(
                    //   builder: (context, state) {
                    //     return AnimatedComplettionToggleSwitch(
                    //       completionToggleCubit:
                    //           context.read<CompletionToggleCubit>(),
                    //     );
                    //   },
                    // ),
                  ],
                ),
                const SizedBox(height: sizeBoxMedium),
                BlocBuilder<TodayQuestionCubit, TodayQuestionState>(
                  builder: (context, state) {
                    if (state is TodayQuestionLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is TodayQuestionLoaded) {
                      final todayQuestions = state.questions;
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: todayQuestions.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return CollapsableQuestionCard(
                            key: key,
                            rounded: true,
                            question: todayQuestions[index],
                            isTranparent: false,
                            completedQuestionCubit: _completedQuestionCubit,
                            expansionCubit:
                                context.read<QuestionExpansionCubit>(),
                          );
                        },
                      );
                    } else {
                      return const Text('Something went wrong');
                    }
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _ProgressCardsRow extends StatelessWidget {
  const _ProgressCardsRow({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomProgressCard(
            theme: theme,
            title: 'Total',
            current: 50,
            total: 150,
            totalSteps: 10,
            size: 10,
          ),
        ),
        const SizedBox(width: sizeBoxMedium),
        Expanded(
          child: CustomProgressCard(
            theme: theme,
            title: 'This month',
            current: 50,
            total: 150,
            totalSteps: 10,
            size: 10,
          ),
        ),
      ],
    );
  }
}
