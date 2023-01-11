// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/auth_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/theme_cubit.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          bottomNavigationBar: const PersistedBottomNavBar(),
          body: ImageContainer(
            size: size,
            darkBackgroundImage: 'assets/images/dark_home_background.png',
            lightBackgroundImage: 'assets/images/light_home_background.png',
            theme: theme,
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.08,
              vertical: size.height * 0.07,
            ),
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state is Authenticated) {
                  final url = state.user!.photoUrl!;
                  final name = state.user!.name!;
                  return Column(
                    children: [
                      CustomAppBar(url: url, theme: theme),
                      const SizedBox(height: 20),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Hi ${name.split(' ').first}, Today you have 2 questions to complete 🔥',
                              style: theme.textTheme.headline4,
                            ),
                            const SizedBox(height: 20),
                            CustomCirCularProgressBar(
                              size: size.width * 0.37,
                              initialValue: 14,
                              total: 20,
                              theme: theme,
                            ),
                            const SizedBox(height: sizeBoxHeightMedium),
                            Text('14/20', style: theme.textTheme.headline4),
                            Text(
                              'Questions',
                              style: theme.textTheme.headline4!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: sizeBoxHeightSmall),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Card(
                                    elevation: 0,
                                    color: darkSecondaryColor.withOpacity(0.8),
                                    child: AspectRatio(
                                      aspectRatio: 4.3 / 4,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Today',
                                              style: theme.textTheme.headline4!
                                                  .copyWith(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 2,
                                                ),
                                              ),
                                              child: StepProgressIndicator(
                                                totalSteps: 10,
                                                currentStep: 6,
                                                size: 10,
                                                selectedColor:
                                                    theme.brightness ==
                                                            Brightness.dark
                                                        ? darkSecondaryColor
                                                        : Colors.black,
                                                unselectedColor: Colors.white54,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: sizeBoxHeightMedium),
                                Expanded(
                                  child: Container(
                                    height: 130,
                                    decoration: BoxDecoration(
                                      color:
                                          theme.primaryColor.withOpacity(0.6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
        );
      },
    );
  }
}
