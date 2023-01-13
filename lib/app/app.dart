import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:lit_code/business_logic/cubits/cubit/theme_cubit.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/presentation/router/app_router.dart';
import 'package:lit_code/theme/theme.dart';

class LitCodeApp extends StatefulWidget {
  const LitCodeApp({
    super.key,
    required this.appRouter,
    required this.userBox,
    required this.questionBox,
  });

  final AppRouter appRouter;
  final Box<User> userBox;
  final Box<Question> questionBox;

  Future<void> closeBoxes() async {
    if (userBox.isOpen) {
      await userBox.close();
    }
  }

  @override
  State<LitCodeApp> createState() => _LitCodeAppState();
}

class _LitCodeAppState extends State<LitCodeApp> {
  @override
  void dispose() {
    widget.closeBoxes();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: BlocProvider.of<ThemeCubit>(context).isDark
                ? darkAppTheme
                : lightAppTheme,
            onGenerateRoute: widget.appRouter.onGenerateRoute,
            initialRoute: '/',
          );
        },
      ),
    );
  }
}
