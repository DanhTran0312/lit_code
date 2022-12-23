import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/theme_cubit.dart';
import 'package:lit_code/data/repositories/auth_repository.dart';
import 'package:lit_code/presentation/router/app_router.dart';
import 'package:lit_code/theme/theme.dart';

class LitCodeApp extends StatelessWidget {
  const LitCodeApp({
    super.key,
    required this.appRouter,
  });

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: BlocProvider.of<ThemeCubit>(context).isDark
              ? darkAppTheme
              : lightAppTheme,
          onGenerateRoute: appRouter.onGenerateRoute,
          initialRoute: '/',
        );
      },
    );
  }
}
