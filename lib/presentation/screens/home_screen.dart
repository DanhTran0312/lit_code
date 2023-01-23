// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/completion_toggle_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/theme_cubit.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Scaffold(
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
            child: _HomeScreenContent(theme: theme, size: size),
          );
        },
      ),
    );
  }
}

class _HomeScreenContent extends StatelessWidget {
  const _HomeScreenContent({
    required this.theme,
    required this.size,
  });

  final ThemeData theme;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        var name = '';
        var url = '';
        const dummyQuestionToday = 2;
        const dummyTotalQuestion = 20;
        const dummyCompletedQuestion = 14;
        if (state is Authenticated) {
          name = state.user.name!;
          url = state.user.photoUrl!;
        }
        final welcomeTextStyle =
            theme.textTheme.headline4!.copyWith(fontWeight: FontWeight.w600);
        return ListView(
          shrinkWrap: true,
          children: [
            CustomAppBar(url: url, theme: theme),
            const SizedBox(height: sizeBoxHeightSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Hi ${name.split(' ').first}',
                    style: welcomeTextStyle,
                    children: [
                      TextSpan(
                        text: ', Today you have ',
                        style: welcomeTextStyle,
                      ),
                      TextSpan(
                        // TODO: Replace with actual question count
                        text: '$dummyQuestionToday questions',
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
                ),
                const SizedBox(height: sizeBoxHeightSmall),
                Align(
                  child: Column(
                    children: [
                      CustomCirCularProgressBar(
                        size: size.width * 0.37,
                        initialValue: 14,
                        total: 20,
                        theme: theme,
                      ),
                      const SizedBox(height: sizeBoxHeightSmall),
                      RichText(
                        text: TextSpan(
                          text: dummyCompletedQuestion.toString(),
                          style: welcomeTextStyle.copyWith(
                            fontWeight: FontWeight.w800,
                            color: theme.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: '/$dummyTotalQuestion',
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
                const SizedBox(height: sizeBoxHeightSmall),
                _ProgressCardsRow(theme: theme),
                const SizedBox(height: sizeBoxHeightMedium),
                BlocProvider(
                  create: (context) => CompletionToggleCubit(),
                  child: Builder(
                    builder: (context) {
                      return BlocBuilder<CompletionToggleCubit, int>(
                        builder: (contex, state) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SectionHeading(title: 'Today'),
                              AnimatedComplettionToggleSwitch(
                                completionToggleCubit:
                                    context.read<CompletionToggleCubit>(),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: sizeBoxHeightSmall),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultPageHorizontalPadding,
                    vertical: defaultPageVerticalPadding,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: inputBorderColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const SizedBox.shrink(),
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
        const SizedBox(width: sizeBoxHeightMedium),
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
