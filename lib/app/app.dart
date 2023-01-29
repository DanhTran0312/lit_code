import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/question_list_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/settings_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/completed_question_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/confetti_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/network_connection_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/theme_cubit.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';
import 'package:lit_code/presentation/router/app_router.dart';
import 'package:lit_code/theme/theme.dart';

class LitCodeApp extends StatefulWidget {
  const LitCodeApp({
    super.key,
    required AuthRepository authRepository,
    required AppBloc appBloc,
    required ThemeCubit themeCubit,
    required NetworkConnectionCubit networkConnectionCubit,
    required QuestionListBloc questionListBloc,
    required CompletedQuestionCubit completedQuestionCubit,
    required UserRepository userRepository,
    required AppRouter appRouter,
    required Boxes boxes,
    required StatisticsBloc statisticsBloc,
    required SettingsBloc settingsBloc,
    required QuestionRecommendationRepository questionRecommendationRepository,
    required ConfettiCubit confettiCubit,
  })  : _authRepository = authRepository,
        _appBloc = appBloc,
        _themeCubit = themeCubit,
        _networkConnectionCubit = networkConnectionCubit,
        _questionListBloc = questionListBloc,
        _completedQuestionCubit = completedQuestionCubit,
        _userRepository = userRepository,
        _appRouter = appRouter,
        _statisticsBloc = statisticsBloc,
        _boxes = boxes,
        _confettiCubit = confettiCubit,
        _questionRecommendationRepository = questionRecommendationRepository,
        _settingsBloc = settingsBloc;

  final AppBloc _appBloc;
  final AppRouter _appRouter;
  final AuthRepository _authRepository;
  final Boxes _boxes;
  final CompletedQuestionCubit _completedQuestionCubit;
  final NetworkConnectionCubit _networkConnectionCubit;
  final QuestionListBloc _questionListBloc;
  final QuestionRecommendationRepository _questionRecommendationRepository;
  final SettingsBloc _settingsBloc;
  final StatisticsBloc _statisticsBloc;
  final ThemeCubit _themeCubit;
  final UserRepository _userRepository;
  final ConfettiCubit _confettiCubit;

  @override
  State<LitCodeApp> createState() => _LitCodeAppState();
}

class _LitCodeAppState extends State<LitCodeApp> {
  @override
  void dispose() {
    widget._boxes.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => widget._authRepository,
        ),
        RepositoryProvider(
          create: (context) => widget._userRepository,
        ),
        RepositoryProvider(
          create: (context) => widget._questionRecommendationRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (context) => widget._appBloc,
          ),
          BlocProvider<ThemeCubit>(
            create: (context) => widget._themeCubit,
          ),
          BlocProvider<NetworkConnectionCubit>(
            create: (context) => widget._networkConnectionCubit,
          ),
          BlocProvider<StatisticsBloc>(
            create: (context) => widget._statisticsBloc,
          ),
          BlocProvider<QuestionListBloc>(
            create: (context) => widget._questionListBloc,
          ),
          BlocProvider<CompletedQuestionCubit>(
            create: (context) => widget._completedQuestionCubit,
          ),
          BlocProvider<SettingsBloc>(
            create: (context) => widget._settingsBloc,
          ),
          BlocProvider<ConfettiCubit>(
            create: (context) => widget._confettiCubit,
          ),
        ],
        child: BlocListener<AppBloc, AppState>(
          listener: (context, state) {
            if (state is Authenticated) {
              widget._appRouter.router.goNamed('home');
            } else if (state is Unauthenticated) {
              widget._appRouter.router.goNamed('signIn');
            }
          },
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                theme: BlocProvider.of<ThemeCubit>(context).isDark
                    ? darkAppTheme
                    : lightAppTheme,
                routerConfig: widget._appRouter.router,
              );
            },
          ),
        ),
      ),
    );
  }
}
