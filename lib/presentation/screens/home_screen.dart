// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/auth_bloc.dart';
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
